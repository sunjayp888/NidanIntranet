﻿using System;
using System.Collections.Generic;
using Nidan.Business.EmailServiceReference;

namespace Nidan.Business.Interfaces
{
    public interface IEmailService
    {
        void SendEmail(EmailData data);
        void SendEmail(EmailData data, List<Guid> docGuids);
        void SendEmail(EmailData data, Dictionary<string, byte[]> attachments);
    }
}
