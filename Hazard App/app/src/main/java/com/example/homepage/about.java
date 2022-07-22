package com.example.homepage;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.widget.Toast;

import java.util.Calendar;

import mehdi.sakout.aboutpage.AboutPage;
import mehdi.sakout.aboutpage.Element;

public class about extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null){
            actionBar.setBackgroundDrawable(getResources().getDrawable(R.drawable.gradient));
        }
        Element adsElement = new Element();
        String desc= "Real Time Hazard updates"+"\n Display the real time updates on hazards";
        View aboutPage = new AboutPage(this)
                .isRTL(false)
                .setImage(R.drawable.hazard1)
                .setDescription(desc)
                .addItem(new Element().setTitle("About Us"))
                .addGroup("ICT650 CS2515B")
                .addGitHub("")
                .addItem(new Element().setTitle("**********************************************"))
                .addItem(new Element().setTitle("Group Member"))
                .addGroup("Nur Nadirah Aina Binti Mohamad Ruslan (2021119729)")
                .addGroup("Nurfariza Husna Binti Suhairi (2021118565)")
                .addGroup("Putri Balqis Binti A Wahid"+"\n(2021100117)")
                .addItem(new Element().setTitle("**********************************************"))
                .addItem(createCopyright())
                .create();
        setContentView(aboutPage);
        }

    private Element createCopyright()
    {
        Element copyright = new Element();
        @SuppressLint("DefaultLocale") final String copyrightString = String.format("Copyright %d by Hazards App", Calendar.getInstance().get(Calendar.YEAR));
        copyright.setTitle(copyrightString);
        // copyright.setIcon(R.mipmap.ic_launcher);
        copyright.setGravity(Gravity.CENTER);
        copyright.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(about.this,copyrightString,Toast.LENGTH_SHORT).show();
            }
        });
        return copyright;
    }
}

