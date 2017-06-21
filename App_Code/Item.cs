using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Item
/// </summary>
public class Item
{
    private int maSP;
    private string tenSP;
    private int soLuong;
    private float gia;
    private string size;

    public int MaSP
    {
        get
        {
            return maSP;
        }

        set
        {
            maSP = value;
        }
    }

    public float Gia
    {
        get
        {
            return gia;
        }

        set
        {
            gia = value;
        }
    }

    public string TenSP
    {
        get
        {
            return tenSP;
        }

        set
        {
            tenSP = value;
        }
    }

    public int SoLuong
    {
        get
        {
            return soLuong;
        }

        set
        {
            soLuong = value;
        }
    }

    public string Size
    {
        get
        {
            return size;
        }

        set
        {
            size = value;
        }
    }

    public Item()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    
    public Item(int MaSP , int SoLuong, string Size)
    {
        this.MaSP = MaSP;
        this.SoLuong = SoLuong;
        this.Size = Size;
    }

}