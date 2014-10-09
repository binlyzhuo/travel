using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Quartz;
using Quartz.Impl;
using Quartz.Spi;
using Quartz.Impl.Triggers;

namespace Travelling.CommonLibrary
{
    public class QuartzHelper
    {
        public static void Execute()
        {
            ISchedulerFactory factory = new StdSchedulerFactory();
            IScheduler schedule = factory.GetScheduler();
            schedule.Start();
            IJobDetail job = JobBuilder.Create<SampleJob>().WithIdentity("SampleJob", "JobGroup1").Build();
            ITrigger trigger = TriggerBuilder.Create().StartNow().Build();

            //Quartz.MisfireInstruction.CronTrigger 
            //Quartz.MisfireInstruction.CronTrigger trigger2 = new Quartz.MisfireInstruction.CronTrigger("trigger1", "group1", "job1", "group1"); 
            IOperableTrigger trigger2 = new CronTriggerImpl("trigName", "group1", "1/2 * * * * ?");

            schedule.ScheduleJob(job, trigger2);
            schedule.UnscheduleJob(trigger2.Key);
            //schedule.PauseTrigger
            schedule.Shutdown(false);
        }


    }

    public class SampleJob : IJob
    {
        public void Execute(IJobExecutionContext context)
        {
            //Console.WriteLine("Quartz.net");
            
            //Console.WriteLine("hello world!");
        }
    }
}
