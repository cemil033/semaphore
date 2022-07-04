using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Command;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace Semap.ViewModels
{
    public class MainViewModel:ViewModelBase
    {
        public MainViewModel()
        {
            
        }

        #region Place in Semaphore
        private int pcount=6;
        private static int Count=6;
        private static int InitCount;
        public int Pcount
        {
            get => pcount; set
            {
                pcount = value;                
                RaisePropertyChanged();
            }
        }
        public RelayCommand UpCommand
        {
            get => new RelayCommand(
            () =>
            {
                Pcount++;            
            });
        }
        public RelayCommand DownCommand
        {
            get => new RelayCommand(
            () =>
            {
                Pcount--;
            });
        }

        public ObservableCollection<Thread> WrkThreads { get; set; } = new ObservableCollection<Thread>();
        private Dispatcher dispatcher = Dispatcher.CurrentDispatcher;
        public  System.Threading.Semaphore semaphore { get; set; } = new System.Threading.Semaphore(2, Count);
        #endregion

        #region Create
        public ObservableCollection<Thread> CrThreads { get; set; }=new ObservableCollection<Thread>();
        private Thread crselitem;
        public Thread Crselitem { get => crselitem;
            set
            { 
                crselitem = value; 
                RaisePropertyChanged();
            }
        }
        private int s = 0;
        public RelayCommand CreateCommand
        {
            get => new RelayCommand(() =>
            {

                s++;
                CrThreads.Add(new Thread(() =>
                {
                    bool st = false;                    
                    while (!st)
                    {
                        if (semaphore.WaitOne(10000))
                        {
                            try
                            {

                                if (WrkThreads.Count < Count)
                                {
                                    Thread.Sleep(5000);
                                    dispatcher.Invoke(() => WrkThreads.Add(WaitThreads[0]));
                                    dispatcher.Invoke(() => WaitThreads.RemoveAt(0));                                    
                                    Thread.Sleep(1000);
                                }
                                else
                                {                                   
                                   Thread.Sleep(6000);
                                }
                            }
                            finally
                            {
                                st = true;
                                Thread.Sleep(5000);
                                dispatcher.Invoke(() => WrkThreads.RemoveAt(0));
                                semaphore.Release();
                            }
                        }
                        else
                        {                           
                            
                        }
                    }
                    //Thread.Sleep(4000);
                }){ Name = s.ToString()});
            });
        }
        public RelayCommand CrDblClickCommand
        {
            get => new RelayCommand(() =>
            {                
                if(Crselitem != null)
                {                    
                    int id = Crselitem.ManagedThreadId;
                    var th = Crselitem;
                    dispatcher.Invoke(() => WaitThreads.Add(Crselitem));
                    InitCount = WaitThreads.Count;
                    CrThreads.Remove(Crselitem);
                    th.Start();                    
                }
            });
        }
        #endregion

        #region Waiting
        public ObservableCollection<Thread> WaitThreads { get; set; } = new ObservableCollection<Thread>();

        #endregion
    }
}
