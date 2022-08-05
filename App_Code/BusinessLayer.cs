using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BusinessLayer
/// </summary>
public class BusinessLayer
{    
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataSet ds;

	public BusinessLayer()
	{
       con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
	}

    #region Methods for Connection

    public void OpenConnection()
    {
        if (con != null)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
        }
    }

    public void CloseConnection()
    {
        if (con != null)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }

    #endregion

    #region Methods for Dataset

    public object GetScalar(string proc, string[] parameters, object[] parameterValues)
    {
        OpenConnection();
        cmd = new SqlCommand(proc, con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (parameters != null)
            for (int i = 0; i < parameters.Length; i++)
                cmd.Parameters.AddWithValue(parameters[i], parameterValues[i]);
        object o = cmd.ExecuteScalar();
        CloseConnection();
        return o;
    }

    public SqlDataReader GetDataReader(string proc, string[] parameters, object[] parameterValues)
    {
        OpenConnection();
        cmd = new SqlCommand(proc, con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (parameters != null)
            for (int i = 0; i < parameters.Length; i++)
                cmd.Parameters.AddWithValue(parameters[i], parameterValues[i]);
        return cmd.ExecuteReader();
    }

    public DataSet GetDataSet(string proc, string[] parameters, object[] parameterValues)
    {
        OpenConnection();
        cmd = new SqlCommand(proc, con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (parameters != null)
            for (int i = 0; i < parameters.Length; i++)
                cmd.Parameters.AddWithValue(parameters[i], parameterValues[i]);
        sda = new SqlDataAdapter(cmd);
        ds = new DataSet();
        sda.Fill(ds);
        CloseConnection();
        return ds;
    }
    
    #endregion

    #region Methods for Insert, Update and Delete

    public int InsUpdDelRecord(string proc, string[] parameters, object[] parameterValues)
    {
        OpenConnection();
        cmd = new SqlCommand(proc, con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (parameters != null)
            for (int i = 0; i < parameters.Length; i++)
                cmd.Parameters.AddWithValue(parameters[i], parameterValues[i]);
        int recordCount = cmd.ExecuteNonQuery();
        CloseConnection();
        return recordCount;
    }

    #endregion

}