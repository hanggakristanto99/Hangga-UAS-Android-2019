package com.example.petik.webservicejson;

import android.app.DownloadManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {

    private TextView textHasilJSON;
    private RequestQueue mQueue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mQueue = Volley.newRequestQueue(this);
        textHasilJSON = findViewById(R.id.textJSON);
        Button tombolJson = findViewById(R.id.btnJSON);

        tombolJson.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                uraiJSON();
            }
        });
    }
    private void uraiJSON(){
        String url = "http://192.168.5.57/hangga_uas_android_2019.php";

        JsonObjectRequest request = new JsonObjectRequest(Request.Method.GET, url,
                null, new Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                try {
                    JSONArray jsonArray = response.getJSONArray("array");

                    for (int i = 0; i < jsonArray.length(); i++) {

                        JSONObject uas = jsonArray.getJSONObject(i);

                        String ID = uas.getString("id");
                        String Nama = uas.getString("nama");
                        String Asal = uas.getString("asal_daerah");
                        String Kamar = uas.getString("kamar");

                        textHasilJSON.append("ID : "+ID+"\n"+"Nama : "+Nama +"\n"+ "Asal : "+ Asal + "\n "+"Kamar : "+ Kamar + "\n\n");

                    }
                }catch (JSONException e){
                    e.printStackTrace();
                    Toast.makeText(getApplicationContext(), "error", Toast.LENGTH_SHORT).show();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                error.printStackTrace();
                Toast.makeText(getApplicationContext(), "error", Toast.LENGTH_SHORT).show();
            }
        });
        mQueue.add(request);
    }
}
