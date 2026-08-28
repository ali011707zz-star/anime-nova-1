package com.anslayer.ui.anime;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.savedstate.c;
import com.anslayer.ui.anime.SeriesActivity;
import j4.j2;
import java.util.Iterator;
import java.util.List;
import jc.g;
import jc.l;
import n8.b;

/* compiled from: SeriesActivity.kt */
/* loaded from: classes.dex */
public final class SeriesActivity extends o5.a<j2> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4161l = new a(null);

    /* compiled from: SeriesActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, long j10, String str, boolean z10, boolean z11) {
            l.f(context, "context");
            l.f(str, "title");
            Intent intent = new Intent(context, (Class<?>) SeriesActivity.class);
            intent.putExtra("anime_id", j10);
            intent.putExtra("arg_title", str);
            intent.putExtra("not_yet_aired", z10);
            intent.putExtra("just_info", z11);
            return intent;
        }
    }

    public static final void n(SeriesActivity seriesActivity, View view) {
        l.f(seriesActivity, "this$0");
        seriesActivity.onBackPressed();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Object obj;
        List<Fragment> t02 = getSupportFragmentManager().t0();
        l.e(t02, "supportFragmentManager.fragments");
        Iterator<T> it2 = t02.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it2.next();
                if (((Fragment) obj) instanceof b5.a) {
                    break;
                }
            }
        }
        c cVar = (Fragment) obj;
        if (cVar != null && c().f8476b.getCurrentItem() == 0) {
            if (((b5.a) cVar).s()) {
                super.onBackPressed();
                return;
            }
            return;
        }
        super.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j2 c10 = j2.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        b.a(this, "native-lib");
        setSupportActionBar(c().f8478d);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8478d.setNavigationOnClickListener(new View.OnClickListener() { // from class: b5.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SeriesActivity.n(SeriesActivity.this, view);
            }
        });
        Bundle extras = getIntent().getExtras();
        l.c(extras);
        setTitle(extras.getString("arg_title"));
        Bundle extras2 = getIntent().getExtras();
        boolean z10 = extras2 == null ? false : extras2.getBoolean("not_yet_aired");
        Bundle extras3 = getIntent().getExtras();
        b5.c cVar = new b5.c(this, z10, extras3 != null ? extras3.getBoolean("just_info") : false);
        cVar.getBundle().putAll(getIntent().getExtras());
        c().f8476b.setOffscreenPageLimit(3);
        c().f8476b.setAdapter(cVar);
        c().f8477c.setupWithViewPager(c().f8476b);
    }
}
