package com.anslayer.ui.splash;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.news.detail.NewsDetailsActivity;
import j4.e;
import jc.l;
import o5.a;

/* compiled from: SplashActivity.kt */
/* loaded from: classes.dex */
public final class SplashActivity extends a<e> {
    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        String stringExtra;
        String stringExtra2;
        String stringExtra3;
        super.onCreate(bundle);
        e c10 = e.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        long longExtra = getIntent().getLongExtra("news_id", 0L);
        String stringExtra4 = getIntent().getStringExtra("news_title");
        if (stringExtra4 == null || (stringExtra = getIntent().getStringExtra("news_description")) == null || (stringExtra2 = getIntent().getStringExtra("news_image_url")) == null || (stringExtra3 = getIntent().getStringExtra("news_created_at")) == null) {
            return;
        }
        Intent a10 = NewsDetailsActivity.f4237l.a(this, s4.a.Companion.a(longExtra, stringExtra4, stringExtra, stringExtra2, stringExtra3, getIntent().getStringExtra("news_source_link"), getIntent().getStringExtra("news_video_link")));
        a10.addFlags(67108864);
        startActivity(a10);
        finish();
    }

    @Override // androidx.appcompat.app.e, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            l.e(m10.d(R.id.fitsWindowFrameLayout, b7.a.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
