package io.wax911.support.custom.pager;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e;
import androidx.fragment.app.v;
import io.wax911.support.SupportExtentionKt;
import java.util.ArrayList;
import java.util.Locale;
import jc.a0;
import jc.l;
import wb.q;

/* compiled from: SupportPageAdapter.kt */
/* loaded from: classes.dex */
public abstract class SupportPageAdapter extends v {
    private final Bundle bundle;
    private final e context;
    private final ArrayList<String> titles;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportPageAdapter(e eVar) {
        super(eVar.getSupportFragmentManager());
        l.f(eVar, "context");
        this.context = eVar;
        this.bundle = new Bundle();
        this.titles = new ArrayList<>();
    }

    public final Bundle getBundle() {
        return this.bundle;
    }

    public final e getContext() {
        return this.context;
    }

    @Override // b2.a
    public int getCount() {
        return this.titles.size();
    }

    @Override // androidx.fragment.app.v
    public abstract Fragment getItem(int i10);

    @Override // b2.a
    public CharSequence getPageTitle(int i10) {
        if (i10 <= this.titles.size()) {
            String str = this.titles.get(i10);
            l.e(str, "titles[position]");
            Locale locale = Locale.getDefault();
            l.e(locale, "getDefault()");
            String upperCase = str.toUpperCase(locale);
            l.e(upperCase, "this as java.lang.String).toUpperCase(locale)");
            return upperCase;
        }
        return SupportExtentionKt.empty(a0.f9170a);
    }

    public final ArrayList<String> getTitles() {
        return this.titles;
    }

    public final void setPagerTitles(int i10) {
        if (this.titles.size() > 0) {
            this.titles.clear();
        }
        ArrayList<String> arrayList = this.titles;
        String[] stringArray = this.context.getResources().getStringArray(i10);
        l.e(stringArray, "context.resources.getStringArray(titleRes)");
        q.u(arrayList, stringArray);
    }
}
