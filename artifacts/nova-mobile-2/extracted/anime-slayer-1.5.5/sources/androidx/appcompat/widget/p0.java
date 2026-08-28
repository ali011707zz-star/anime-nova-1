package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: SuggestionsAdapter.java */
/* loaded from: classes.dex */
public class p0 extends v0.c implements View.OnClickListener {
    public int A;
    public int B;
    public int C;
    public int D;

    /* renamed from: q, reason: collision with root package name */
    public final SearchView f1451q;

    /* renamed from: r, reason: collision with root package name */
    public final SearchableInfo f1452r;

    /* renamed from: s, reason: collision with root package name */
    public final Context f1453s;

    /* renamed from: t, reason: collision with root package name */
    public final WeakHashMap<String, Drawable.ConstantState> f1454t;

    /* renamed from: u, reason: collision with root package name */
    public final int f1455u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f1456v;

    /* renamed from: w, reason: collision with root package name */
    public int f1457w;

    /* renamed from: x, reason: collision with root package name */
    public ColorStateList f1458x;

    /* renamed from: y, reason: collision with root package name */
    public int f1459y;

    /* renamed from: z, reason: collision with root package name */
    public int f1460z;

    /* compiled from: SuggestionsAdapter.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final TextView f1461a;

        /* renamed from: b, reason: collision with root package name */
        public final TextView f1462b;

        /* renamed from: c, reason: collision with root package name */
        public final ImageView f1463c;

        /* renamed from: d, reason: collision with root package name */
        public final ImageView f1464d;

        /* renamed from: e, reason: collision with root package name */
        public final ImageView f1465e;

        public a(View view) {
            this.f1461a = (TextView) view.findViewById(R.id.text1);
            this.f1462b = (TextView) view.findViewById(R.id.text2);
            this.f1463c = (ImageView) view.findViewById(R.id.icon1);
            this.f1464d = (ImageView) view.findViewById(R.id.icon2);
            this.f1465e = (ImageView) view.findViewById(d.f.f5274q);
        }
    }

    public p0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1456v = false;
        this.f1457w = 1;
        this.f1459y = -1;
        this.f1460z = -1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.f1451q = searchView;
        this.f1452r = searchableInfo;
        this.f1455u = searchView.getSuggestionCommitIconResId();
        this.f1453s = context;
        this.f1454t = weakHashMap;
    }

    public static String o(Cursor cursor, String str) {
        return w(cursor, cursor.getColumnIndex(str));
    }

    public static String w(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception unused) {
            return null;
        }
    }

    public final void A(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1454t.put(str, drawable.getConstantState());
        }
    }

    public final void B(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // v0.a, v0.b.a
    public void a(Cursor cursor) {
        if (this.f1456v) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.f1459y = cursor.getColumnIndex("suggest_text_1");
                this.f1460z = cursor.getColumnIndex("suggest_text_2");
                this.A = cursor.getColumnIndex("suggest_text_2_url");
                this.B = cursor.getColumnIndex("suggest_icon_1");
                this.C = cursor.getColumnIndex("suggest_icon_2");
                this.D = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception unused) {
        }
    }

    @Override // v0.a, v0.b.a
    public CharSequence c(Cursor cursor) {
        String o10;
        String o11;
        if (cursor == null) {
            return null;
        }
        String o12 = o(cursor, "suggest_intent_query");
        if (o12 != null) {
            return o12;
        }
        if (this.f1452r.shouldRewriteQueryFromData() && (o11 = o(cursor, "suggest_intent_data")) != null) {
            return o11;
        }
        if (!this.f1452r.shouldRewriteQueryFromText() || (o10 = o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return o10;
    }

    @Override // v0.b.a
    public Cursor d(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f1451q.getVisibility() == 0 && this.f1451q.getWindowVisibility() == 0) {
            try {
                Cursor v10 = v(this.f1452r, charSequence2, 50);
                if (v10 != null) {
                    v10.getCount();
                    return v10;
                }
            } catch (RuntimeException unused) {
            }
        }
        return null;
    }

    @Override // v0.a
    public void e(View view, Context context, Cursor cursor) {
        CharSequence w10;
        a aVar = (a) view.getTag();
        int i10 = this.D;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        if (aVar.f1461a != null) {
            z(aVar.f1461a, w(cursor, this.f1459y));
        }
        if (aVar.f1462b != null) {
            String w11 = w(cursor, this.A);
            if (w11 != null) {
                w10 = l(w11);
            } else {
                w10 = w(cursor, this.f1460z);
            }
            if (TextUtils.isEmpty(w10)) {
                TextView textView = aVar.f1461a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1461a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1461a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1461a.setMaxLines(1);
                }
            }
            z(aVar.f1462b, w10);
        }
        ImageView imageView = aVar.f1463c;
        if (imageView != null) {
            y(imageView, t(cursor), 4);
        }
        ImageView imageView2 = aVar.f1464d;
        if (imageView2 != null) {
            y(imageView2, u(cursor), 8);
        }
        int i12 = this.f1457w;
        if (i12 != 2 && (i12 != 1 || (i11 & 1) == 0)) {
            aVar.f1465e.setVisibility(8);
            return;
        }
        aVar.f1465e.setVisibility(0);
        aVar.f1465e.setTag(aVar.f1461a.getText());
        aVar.f1465e.setOnClickListener(this);
    }

    @Override // v0.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            View g10 = g(this.f1453s, b(), viewGroup);
            if (g10 != null) {
                ((a) g10.getTag()).f1461a.setText(e10.toString());
            }
            return g10;
        }
    }

    @Override // v0.a, android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            View h10 = h(this.f1453s, b(), viewGroup);
            if (h10 != null) {
                ((a) h10.getTag()).f1461a.setText(e10.toString());
            }
            return h10;
        }
    }

    @Override // v0.c, v0.a
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View h10 = super.h(context, cursor, viewGroup);
        h10.setTag(new a(h10));
        ((ImageView) h10.findViewById(d.f.f5274q)).setImageResource(this.f1455u);
        return h10;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public final Drawable k(String str) {
        Drawable.ConstantState constantState = this.f1454t.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    public final CharSequence l(CharSequence charSequence) {
        if (this.f1458x == null) {
            TypedValue typedValue = new TypedValue();
            this.f1453s.getTheme().resolveAttribute(d.a.Q, typedValue, true);
            this.f1458x = this.f1453s.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1458x, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    public final Drawable m(ComponentName componentName) {
        PackageManager packageManager = this.f1453s.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Invalid icon resource ");
            sb2.append(iconResource);
            sb2.append(" for ");
            sb2.append(componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.toString();
            return null;
        }
    }

    public final Drawable n(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f1454t.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f1454t.get(flattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.f1453s.getResources());
        }
        Drawable m10 = m(componentName);
        this.f1454t.put(flattenToShortString, m10 != null ? m10.getConstantState() : null);
        return m10;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        B(b());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        B(b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1451q.w((CharSequence) tag);
        }
    }

    public final Drawable p() {
        Drawable n10 = n(this.f1452r.getSearchActivity());
        return n10 != null ? n10 : this.f1453s.getPackageManager().getDefaultActivityIcon();
    }

    public final Drawable q(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return r(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f1453s.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                try {
                    return Drawable.createFromStream(openInputStream, null);
                } finally {
                    try {
                        openInputStream.close();
                    } catch (IOException unused2) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Error closing icon stream for ");
                        sb2.append(uri);
                    }
                }
            }
            throw new FileNotFoundException("Failed to open " + uri);
        } catch (FileNotFoundException e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Icon not found: ");
            sb3.append(uri);
            sb3.append(", ");
            sb3.append(e10.getMessage());
            return null;
        }
        StringBuilder sb32 = new StringBuilder();
        sb32.append("Icon not found: ");
        sb32.append(uri);
        sb32.append(", ");
        sb32.append(e10.getMessage());
        return null;
    }

    public Drawable r(Uri uri) throws FileNotFoundException {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f1453s.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException unused) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: " + uri);
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: " + uri);
                }
                throw new FileNotFoundException("No path: " + uri);
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new FileNotFoundException("No package found for authority: " + uri);
            }
        }
        throw new FileNotFoundException("No authority: " + uri);
    }

    public final Drawable s(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f1453s.getPackageName() + "/" + parseInt;
            Drawable k10 = k(str2);
            if (k10 != null) {
                return k10;
            }
            Drawable f10 = f0.a.f(this.f1453s, parseInt);
            A(str2, f10);
            return f10;
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Icon resource not found: ");
            sb2.append(str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable k11 = k(str);
            if (k11 != null) {
                return k11;
            }
            Drawable q10 = q(Uri.parse(str));
            A(str, q10);
            return q10;
        }
    }

    public final Drawable t(Cursor cursor) {
        int i10 = this.B;
        if (i10 == -1) {
            return null;
        }
        Drawable s10 = s(cursor.getString(i10));
        return s10 != null ? s10 : p();
    }

    public final Drawable u(Cursor cursor) {
        int i10 = this.C;
        if (i10 == -1) {
            return null;
        }
        return s(cursor.getString(i10));
    }

    public Cursor v(SearchableInfo searchableInfo, String str, int i10) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i10 > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i10));
        }
        return this.f1453s.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }

    public void x(int i10) {
        this.f1457w = i10;
    }

    public final void y(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    public final void z(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }
}
