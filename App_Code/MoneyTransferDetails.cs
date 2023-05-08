using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

public class MoneyTransferDetails
{
    private long acctotransfer;
    private long amttransfer;
    private string bankname;
    private long remainingbal;

    public long Acctotransfer
    {
        get
        {
            return acctotransfer;
        }
        set
        {
            acctotransfer = value;
        }
    }

    public long Amttransfer
    {
        get
        {
            return amttransfer;
        }
        set
        {
            amttransfer = value;
        }
    }

    public string Bankname
    {
        get
        {
            return bankname;
        }
        set
        {
            bankname = value;
        }
    }

    public long Remainingbal
    {
        get
        {
            return remainingbal;
        }
        set
        {
            remainingbal = value;
        }
    }

    public int transferdetails()
    {
        throw new System.NotImplementedException();
    }
}
