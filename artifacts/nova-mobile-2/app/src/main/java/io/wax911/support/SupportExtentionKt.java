package io.wax911.support;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.fragment.app.e;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.snackbar.Snackbar;
import com.nguyenhoanglam.progresslayout.ProgressLayout;
import e0.b;
import f0.a;
import io.wax911.support.SupportExtentionKt;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import jc.a0;
import jc.l;
import q0.b0;
import qc.i;
import s3.c;
import s3.f;
import s3.g;
import vb.p;
import wb.t;

/* compiled from: SupportExtention.kt */
/* loaded from: classes.dex */
public final class SupportExtentionKt {
    public static final String capitalizeWords(String str, List<String> list) {
        List i10;
        l.f(list, "exceptions");
        if (!(str == null || str.length() == 0)) {
            StringBuilder sb2 = new StringBuilder(str.length());
            List<String> d10 = new i("_|\\s").d(str, 0);
            if (!d10.isEmpty()) {
                ListIterator<String> listIterator = d10.listIterator(d10.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        i10 = t.M(d10, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            i10 = wb.l.i();
            Object[] array = i10.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                int length = strArr.length;
                int i11 = 0;
                while (i11 < length) {
                    String str2 = strArr[i11];
                    int i12 = i11 + 1;
                    if (str2.length() > 0) {
                        if (list.contains(str2)) {
                            sb2.append(str2);
                        } else {
                            sb2.append(qc.t.n(str2));
                        }
                    }
                    if (i11 != strArr.length - 1) {
                        sb2.append(" ");
                    }
                    i11 = i12;
                }
                String sb3 = sb2.toString();
                l.e(sb3, "{\n        val result = S…  result.toString()\n    }");
                return sb3;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        return empty(a0.f9170a);
    }

    public static /* synthetic */ List capitalizeWords$default(String[] strArr, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = Collections.emptyList();
            l.e(list, "emptyList()");
        }
        return capitalizeWords(strArr, (List<String>) list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: capitalizeWords$lambda-6, reason: not valid java name */
    public static final String m3capitalizeWords$lambda6(List list, String str) {
        l.f(list, "$exceptions");
        return capitalizeWords(str, (List<String>) list);
    }

    public static final <T> List<T> constructListFrom(T[] tArr) {
        l.f(tArr, "<this>");
        List<T> asList = Arrays.asList(Arrays.copyOf(tArr, tArr.length));
        l.e(asList, "asList(*this)");
        return asList;
    }

    public static final int dipToPx(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static final String empty(a0 a0Var) {
        l.f(a0Var, "<this>");
        return "";
    }

    public static final boolean equal(Object obj, Object obj2) {
        return (obj == null || obj2 == null || !l.a(obj, obj2)) ? false : true;
    }

    public static final int getActionBarHeight(e eVar) {
        l.f(eVar, "<this>");
        TypedArray obtainStyledAttributes = eVar.getTheme().obtainStyledAttributes(new int[]{android.R.attr.actionBarSize});
        l.e(obtainStyledAttributes, "this.theme.obtainStyledA…attr.actionBarSize)\n    )");
        obtainStyledAttributes.recycle();
        return (int) obtainStyledAttributes.getDimension(0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
    }

    public static final int getColorFromAttr(Context context, int i10) {
        l.f(context, "<this>");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i10});
        l.e(obtainStyledAttributes, "this.obtainStyledAttributes(intArrayOf(colorAttr))");
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static final int getCompatColor(Context context, int i10) {
        l.f(context, "<this>");
        return a.d(context, i10);
    }

    public static final Drawable getCompatDrawable(Context context, int i10) {
        l.f(context, "<this>");
        return f.a.b(context, i10);
    }

    public static final Drawable getDrawableFromAttr(Context context, int i10) {
        l.f(context, "<this>");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i10});
        l.e(obtainStyledAttributes, "this.obtainStyledAttribu…intArrayOf(drawableAttr))");
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static final <T> List<Map.Entry<String, T>> getKeyFilteredMap(Map<String, ? extends T> map) {
        l.f(map, "<this>");
        List<T> N = g.F(map).L(ComparatorUtil.INSTANCE.getKeyComparator()).N();
        l.e(N, "of(this).sorted(Comparat…KeyComparator()).toList()");
        return N;
    }

    public static final LayoutInflater getLayoutInflater(Context context) {
        l.f(context, "<this>");
        Object systemService = context.getSystemService("layout_inflater");
        if (systemService != null) {
            return (LayoutInflater) systemService;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.LayoutInflater");
    }

    public static final int getNavigationBarHeight(Resources resources) {
        l.f(resources, "<this>");
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final Point getScreenDimens(Context context) {
        l.f(context, "<this>");
        Point point = new Point();
        Object systemService = context.getSystemService("window");
        if (systemService != null) {
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getSize(point);
            }
            return point;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
    }

    public static final int getStatusBarHeight(Resources resources) {
        l.f(resources, "<this>");
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static final List<String> getStringList(Context context, int i10) {
        l.f(context, "<this>");
        String[] stringArray = context.getResources().getStringArray(i10);
        l.e(stringArray, "this.resources.getStringArray(arrayRes)");
        return constructListFrom(stringArray);
    }

    public static final Drawable getTintedDrawable(Context context, int i10) {
        l.f(context, "<this>");
        Drawable b10 = f.a.b(context, i10);
        l.c(b10);
        Drawable mutate = i0.a.r((Drawable) s3.e.c(b10)).mutate();
        l.e(mutate, "wrap(Objects.requireNonN…s, resource)!!)).mutate()");
        i0.a.n(mutate, getColorFromAttr(context, R.attr.colorOnPrimary));
        return mutate;
    }

    public static final void gone(View view) {
        l.f(view, "<this>");
        view.setVisibility(8);
    }

    public static final e hideKeyboard(e eVar) {
        if (eVar == null) {
            return null;
        }
        Object systemService = eVar.getSystemService("input_method");
        if (systemService != null) {
            ((InputMethodManager) systemService).hideSoftInputFromWindow(eVar.getWindow().getDecorView().getWindowToken(), 0);
            return eVar;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
    }

    public static final <E> f<c<E>> indexOfIntPair(Collection<? extends E> collection, final E e10) {
        if (collection == null || collection.isEmpty()) {
            f<c<E>> a10 = f.a();
            l.e(a10, "empty()");
            return a10;
        }
        f<c<E>> k10 = g.z(collection).k(new t3.c() { // from class: nb.c
            @Override // t3.c
            public final boolean a(int i10, Object obj) {
                boolean m4indexOfIntPair$lambda4;
                m4indexOfIntPair$lambda4 = SupportExtentionKt.m4indexOfIntPair$lambda4(e10, i10, obj);
                return m4indexOfIntPair$lambda4;
            }
        });
        l.e(k10, "of(this).findIndexed { _….equal(targetItem)\n     }");
        return k10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: indexOfIntPair$lambda-4, reason: not valid java name */
    public static final boolean m4indexOfIntPair$lambda4(Object obj, int i10, Object obj2) {
        return equal(obj2, obj);
    }

    public static final <A> int indexOfIterable(Iterable<? extends A> iterable, final A a10) {
        if ((iterable != null) != (a10 != null)) {
            return 0;
        }
        f k10 = g.z(iterable).k(new t3.c() { // from class: nb.d
            @Override // t3.c
            public final boolean a(int i10, Object obj) {
                boolean m5indexOfIterable$lambda3;
                m5indexOfIterable$lambda3 = SupportExtentionKt.m5indexOfIterable$lambda3(a10, i10, obj);
                return m5indexOfIterable$lambda3;
            }
        });
        if (k10.c()) {
            return ((c) k10.b()).a();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: indexOfIterable$lambda-3, reason: not valid java name */
    public static final boolean m5indexOfIterable$lambda3(Object obj, int i10, Object obj2) {
        return equal(obj2, obj);
    }

    public static final void invisible(View view) {
        l.f(view, "<this>");
        view.setVisibility(4);
    }

    public static final boolean isConnectedToNetwork(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }

    public static final boolean isLowRamDevice(Context context) {
        if (context == null) {
            return false;
        }
        Object systemService = context.getSystemService("activity");
        if (systemService != null) {
            return b.a((ActivityManager) systemService);
        }
        throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
    }

    public static final boolean isScreenSw(float f10) {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        float f11 = displayMetrics.widthPixels;
        float f12 = displayMetrics.density;
        return Math.min(f11 / f12, ((float) displayMetrics.heightPixels) / f12) >= f10;
    }

    public static final boolean isScreenW(float f10) {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return ((float) displayMetrics.widthPixels) / displayMetrics.density >= f10;
    }

    public static final int pxToDip(float f10) {
        return (int) ((f10 / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static final <C> void replaceWith(List<C> list, Collection<? extends C> collection) {
        l.f(list, "<this>");
        l.f(collection, "collection");
        list.clear();
        list.addAll(collection);
    }

    public static final void showContentLoading(ProgressLayout progressLayout) {
        l.f(progressLayout, "<this>");
        if (progressLayout.e() || progressLayout.f() || progressLayout.g()) {
            progressLayout.o();
        }
    }

    public static final void showLoadedContent(ProgressLayout progressLayout) {
        l.f(progressLayout, "<this>");
        if (progressLayout.h() || progressLayout.f() || progressLayout.g()) {
            progressLayout.m();
        }
    }

    public static final int sizeOf(Collection<?> collection) {
        if (collection == null || collection.isEmpty()) {
            return 0;
        }
        return collection.size();
    }

    public static final Snackbar snack(View view, int i10, int i11, ic.l<? super Snackbar, p> lVar) {
        l.f(view, "<this>");
        l.f(lVar, "f");
        Snackbar make = Snackbar.make(view, view.getContext().getString(i10), i11);
        l.e(make, "make(this, context.getString(message), length)");
        View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
        l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
        ((TextView) findViewById).setGravity(3);
        lVar.invoke(make);
        make.show();
        return make;
    }

    public static /* synthetic */ Snackbar snack$default(View view, int i10, int i11, ic.l lVar, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            lVar = SupportExtentionKt$snack$1.INSTANCE;
        }
        l.f(view, "<this>");
        l.f(lVar, "f");
        Snackbar make = Snackbar.make(view, view.getContext().getString(i10), i11);
        l.e(make, "make(this, context.getString(message), length)");
        View findViewById = make.getView().findViewById(com.google.android.material.R.id.snackbar_text);
        l.e(findViewById, "snack.view.findViewById(…erial.R.id.snackbar_text)");
        ((TextView) findViewById).setGravity(3);
        lVar.invoke(make);
        make.show();
        return make;
    }

    public static final int spToPx(float f10) {
        return Math.round(f10 * Resources.getSystem().getDisplayMetrics().scaledDensity);
    }

    public static final /* synthetic */ <T> void startNewActivity(Context context, Bundle bundle) {
        l.j(4, "T");
        Intent intent = new Intent(context, (Class<?>) Object.class);
        intent.setFlags(268435456);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (context == null) {
            return;
        }
        context.startActivity(intent);
    }

    public static final void startSharedTransitionActivity(e eVar, View view, Intent intent) {
        l.f(eVar, "<this>");
        l.f(view, "target");
        l.f(intent, "data");
        e0.c b10 = e0.c.b(eVar, new p0.e(view, b0.O(view)));
        l.e(b10, "makeSceneTransitionAnimation(this, participants)");
        a.n(eVar, intent, b10.c());
    }

    public static final void visible(View view) {
        l.f(view, "<this>");
        view.setVisibility(0);
    }

    public static final void visibleIf(View view, ic.a<Boolean> aVar) {
        l.f(view, "<this>");
        l.f(aVar, "block");
        view.setVisibility(aVar.invoke().booleanValue() ? 0 : 8);
    }

    public static final Drawable getCompatDrawable(Context context, int i10, int i11) {
        l.f(context, "<this>");
        Drawable b10 = f.a.b(context, i10);
        if (b10 == null) {
            return null;
        }
        Drawable mutate = i0.a.r(b10).mutate();
        l.e(mutate, "wrap(drawableResource).mutate()");
        if (i11 != 0) {
            i0.a.n(mutate, getCompatColor(context, i11));
        }
        return b10;
    }

    public static final Drawable getTintedDrawable(Context context, int i10, int i11) {
        l.f(context, "<this>");
        Drawable b10 = f.a.b(context, i10);
        l.c(b10);
        Drawable mutate = i0.a.r((Drawable) s3.e.c(b10)).mutate();
        l.e(mutate, "wrap(Objects.requireNonN…s, resource)!!)).mutate()");
        i0.a.n(mutate, getColorFromAttr(context, i11));
        return mutate;
    }

    public static final List<String> capitalizeWords(String[] strArr, final List<String> list) {
        l.f(strArr, "<this>");
        l.f(list, "exceptions");
        List<String> N = g.G(Arrays.copyOf(strArr, strArr.length)).x(new t3.b() { // from class: nb.b
            @Override // t3.b
            public final Object apply(Object obj) {
                String m3capitalizeWords$lambda6;
                m3capitalizeWords$lambda6 = SupportExtentionKt.m3capitalizeWords$lambda6(list, (String) obj);
                return m3capitalizeWords$lambda6;
            }
        }).N();
        l.e(N, "of(*this)\n             .… }\n             .toList()");
        return N;
    }
}
