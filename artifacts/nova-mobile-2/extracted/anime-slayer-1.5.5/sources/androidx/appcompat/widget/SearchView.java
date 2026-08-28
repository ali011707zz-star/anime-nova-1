package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.actions.SearchIntents;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements j.c {

    /* renamed from: g0, reason: collision with root package name */
    public static final n f1178g0;
    public l A;
    public k B;
    public View.OnFocusChangeListener C;
    public m D;
    public View.OnClickListener E;
    public boolean F;
    public boolean G;
    public v0.a H;
    public boolean I;
    public CharSequence J;
    public boolean K;
    public boolean L;
    public int M;
    public boolean N;
    public CharSequence O;
    public CharSequence P;
    public boolean Q;
    public int R;
    public SearchableInfo S;
    public Bundle T;
    public final Runnable U;
    public Runnable V;
    public final WeakHashMap<String, Drawable.ConstantState> W;

    /* renamed from: a0, reason: collision with root package name */
    public final View.OnClickListener f1179a0;

    /* renamed from: b0, reason: collision with root package name */
    public View.OnKeyListener f1180b0;

    /* renamed from: c0, reason: collision with root package name */
    public final TextView.OnEditorActionListener f1181c0;

    /* renamed from: d0, reason: collision with root package name */
    public final AdapterView.OnItemClickListener f1182d0;

    /* renamed from: e0, reason: collision with root package name */
    public final AdapterView.OnItemSelectedListener f1183e0;

    /* renamed from: f, reason: collision with root package name */
    public final SearchAutoComplete f1184f;

    /* renamed from: f0, reason: collision with root package name */
    public TextWatcher f1185f0;

    /* renamed from: g, reason: collision with root package name */
    public final View f1186g;

    /* renamed from: h, reason: collision with root package name */
    public final View f1187h;

    /* renamed from: i, reason: collision with root package name */
    public final View f1188i;

    /* renamed from: j, reason: collision with root package name */
    public final ImageView f1189j;

    /* renamed from: k, reason: collision with root package name */
    public final ImageView f1190k;

    /* renamed from: l, reason: collision with root package name */
    public final ImageView f1191l;

    /* renamed from: m, reason: collision with root package name */
    public final ImageView f1192m;

    /* renamed from: n, reason: collision with root package name */
    public final View f1193n;

    /* renamed from: o, reason: collision with root package name */
    public p f1194o;

    /* renamed from: p, reason: collision with root package name */
    public Rect f1195p;

    /* renamed from: q, reason: collision with root package name */
    public Rect f1196q;

    /* renamed from: r, reason: collision with root package name */
    public int[] f1197r;

    /* renamed from: s, reason: collision with root package name */
    public int[] f1198s;

    /* renamed from: t, reason: collision with root package name */
    public final ImageView f1199t;

    /* renamed from: u, reason: collision with root package name */
    public final Drawable f1200u;

    /* renamed from: v, reason: collision with root package name */
    public final int f1201v;

    /* renamed from: w, reason: collision with root package name */
    public final int f1202w;

    /* renamed from: x, reason: collision with root package name */
    public final Intent f1203x;

    /* renamed from: y, reason: collision with root package name */
    public final Intent f1204y;

    /* renamed from: z, reason: collision with root package name */
    public final CharSequence f1205z;

    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* renamed from: f, reason: collision with root package name */
        public int f1206f;

        /* renamed from: g, reason: collision with root package name */
        public SearchView f1207g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f1208h;

        /* renamed from: i, reason: collision with root package name */
        public final Runnable f1209i;

        /* loaded from: classes.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.c();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, d.a.f5197p);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 < 600) {
                return (i10 < 640 || i11 < 480) ? 160 : 192;
            }
            return 192;
        }

        public void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.f1178g0.c(this);
        }

        public boolean b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        public void c() {
            if (this.f1208h) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1208h = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1206f <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1208h) {
                removeCallbacks(this.f1209i);
                post(this.f1209i);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z10, int i10, Rect rect) {
            super.onFocusChanged(z10, i10, rect);
            this.f1207g.B();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1207g.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f1207g.hasFocus() && getVisibility() == 0) {
                this.f1208h = true;
                if (SearchView.o(getContext())) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f1208h = false;
                removeCallbacks(this.f1209i);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.f1208h = false;
                    removeCallbacks(this.f1209i);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.f1208h = true;
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f1207g = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f1206f = i10;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.f1209i = new a();
            this.f1206f = getThreshold();
        }
    }

    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.A(charSequence);
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.H();
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v0.a aVar = SearchView.this.H;
            if (aVar instanceof p0) {
                aVar.a(null);
            }
        }
    }

    /* loaded from: classes.dex */
    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.C;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    /* loaded from: classes.dex */
    public class e implements View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            SearchView.this.d();
        }
    }

    /* loaded from: classes.dex */
    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1189j) {
                searchView.x();
                return;
            }
            if (view == searchView.f1191l) {
                searchView.t();
                return;
            }
            if (view == searchView.f1190k) {
                searchView.y();
            } else if (view == searchView.f1192m) {
                searchView.C();
            } else if (view == searchView.f1184f) {
                searchView.j();
            }
        }
    }

    /* loaded from: classes.dex */
    public class g implements View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.S == null) {
                return false;
            }
            if (searchView.f1184f.isPopupShowing() && SearchView.this.f1184f.getListSelection() != -1) {
                return SearchView.this.z(view, i10, keyEvent);
            }
            if (SearchView.this.f1184f.b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i10 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.r(0, null, searchView2.f1184f.getText().toString());
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class h implements TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            SearchView.this.y();
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class i implements AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.u(i10, 0, null);
        }
    }

    /* loaded from: classes.dex */
    public class j implements AdapterView.OnItemSelectedListener {
        public j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.v(i10);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* loaded from: classes.dex */
    public interface k {
        boolean a();
    }

    /* loaded from: classes.dex */
    public interface l {
        boolean a(String str);

        boolean b(String str);
    }

    /* loaded from: classes.dex */
    public interface m {
        boolean a(int i10);

        boolean b(int i10);
    }

    /* loaded from: classes.dex */
    public static class n {

        /* renamed from: a, reason: collision with root package name */
        public Method f1221a;

        /* renamed from: b, reason: collision with root package name */
        public Method f1222b;

        /* renamed from: c, reason: collision with root package name */
        public Method f1223c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public n() {
            this.f1221a = null;
            this.f1222b = null;
            this.f1223c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1221a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1222b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1223c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        public static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        public void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1222b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        public void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1221a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        public void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1223c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class o extends w0.a {
        public static final Parcelable.Creator<o> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public boolean f1224f;

        /* loaded from: classes.dex */
        public class a implements Parcelable.ClassLoaderCreator<o> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public o createFromParcel(Parcel parcel) {
                return new o(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new o(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public o[] newArray(int i10) {
                return new o[i10];
            }
        }

        public o(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1224f + "}";
        }

        @Override // w0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.f1224f));
        }

        public o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1224f = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    /* loaded from: classes.dex */
    public static class p extends TouchDelegate {

        /* renamed from: a, reason: collision with root package name */
        public final View f1225a;

        /* renamed from: b, reason: collision with root package name */
        public final Rect f1226b;

        /* renamed from: c, reason: collision with root package name */
        public final Rect f1227c;

        /* renamed from: d, reason: collision with root package name */
        public final Rect f1228d;

        /* renamed from: e, reason: collision with root package name */
        public final int f1229e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f1230f;

        public p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1229e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1226b = new Rect();
            this.f1228d = new Rect();
            this.f1227c = new Rect();
            a(rect, rect2);
            this.f1225a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f1226b.set(rect);
            this.f1228d.set(rect);
            Rect rect3 = this.f1228d;
            int i10 = this.f1229e;
            rect3.inset(-i10, -i10);
            this.f1227c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z11 = this.f1230f;
                    if (z11 && !this.f1228d.contains(x10, y10)) {
                        z12 = z11;
                        z10 = false;
                    }
                } else {
                    if (action == 3) {
                        z11 = this.f1230f;
                        this.f1230f = false;
                    }
                    z10 = true;
                    z12 = false;
                }
                z12 = z11;
                z10 = true;
            } else {
                if (this.f1226b.contains(x10, y10)) {
                    this.f1230f = true;
                    z10 = true;
                }
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (z10 && !this.f1227c.contains(x10, y10)) {
                motionEvent.setLocation(this.f1225a.getWidth() / 2, this.f1225a.getHeight() / 2);
            } else {
                Rect rect = this.f1227c;
                motionEvent.setLocation(x10 - rect.left, y10 - rect.top);
            }
            return this.f1225a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        f1178g0 = Build.VERSION.SDK_INT < 29 ? new n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(d.d.f5223g);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(d.d.f5224h);
    }

    public static boolean o(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private void setQuery(CharSequence charSequence) {
        this.f1184f.setText(charSequence);
        this.f1184f.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public void A(CharSequence charSequence) {
        Editable text = this.f1184f.getText();
        this.P = text;
        boolean z10 = !TextUtils.isEmpty(text);
        L(z10);
        N(!z10);
        G();
        K();
        if (this.A != null && !TextUtils.equals(charSequence, this.O)) {
            this.A.a(charSequence.toString());
        }
        this.O = charSequence.toString();
    }

    public void B() {
        M(n());
        D();
        if (this.f1184f.hasFocus()) {
            j();
        }
    }

    public void C() {
        SearchableInfo searchableInfo = this.S;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(h(this.f1203x, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(g(this.f1204y, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    public final void D() {
        post(this.U);
    }

    public final void E(int i10) {
        Editable text = this.f1184f.getText();
        Cursor b10 = this.H.b();
        if (b10 == null) {
            return;
        }
        if (b10.moveToPosition(i10)) {
            CharSequence c10 = this.H.c(b10);
            if (c10 != null) {
                setQuery(c10);
                return;
            } else {
                setQuery(text);
                return;
            }
        }
        setQuery(text);
    }

    public void F(CharSequence charSequence, boolean z10) {
        this.f1184f.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1184f;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.P = charSequence;
        }
        if (!z10 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        y();
    }

    public final void G() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f1184f.getText());
        if (!z11 && (!this.F || this.Q)) {
            z10 = false;
        }
        this.f1191l.setVisibility(z10 ? 0 : 8);
        Drawable drawable = this.f1191l.getDrawable();
        if (drawable != null) {
            drawable.setState(z11 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public void H() {
        int[] iArr = this.f1184f.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1187h.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1188i.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void I() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1184f;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(l(queryHint));
    }

    public final void J() {
        this.f1184f.setThreshold(this.S.getSuggestThreshold());
        this.f1184f.setImeOptions(this.S.getImeOptions());
        int inputType = this.S.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.S.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2;
            }
        }
        this.f1184f.setInputType(inputType);
        v0.a aVar = this.H;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.S.getSuggestAuthority() != null) {
            p0 p0Var = new p0(getContext(), this, this.S, this.W);
            this.H = p0Var;
            this.f1184f.setAdapter(p0Var);
            ((p0) this.H).x(this.K ? 2 : 1);
        }
    }

    public final void K() {
        this.f1188i.setVisibility((p() && (this.f1190k.getVisibility() == 0 || this.f1192m.getVisibility() == 0)) ? 0 : 8);
    }

    public final void L(boolean z10) {
        this.f1190k.setVisibility((this.I && p() && hasFocus() && (z10 || !this.N)) ? 0 : 8);
    }

    public final void M(boolean z10) {
        this.G = z10;
        int i10 = z10 ? 0 : 8;
        boolean z11 = !TextUtils.isEmpty(this.f1184f.getText());
        this.f1189j.setVisibility(i10);
        L(z11);
        this.f1186g.setVisibility(z10 ? 8 : 0);
        this.f1199t.setVisibility((this.f1199t.getDrawable() == null || this.F) ? 8 : 0);
        G();
        N(!z11);
        K();
    }

    public final void N(boolean z10) {
        int i10 = 8;
        if (this.N && !n() && z10) {
            this.f1190k.setVisibility(8);
            i10 = 0;
        }
        this.f1192m.setVisibility(i10);
    }

    @Override // j.c
    public void b() {
        if (this.Q) {
            return;
        }
        this.Q = true;
        int imeOptions = this.f1184f.getImeOptions();
        this.R = imeOptions;
        this.f1184f.setImeOptions(imeOptions | 33554432);
        this.f1184f.setText("");
        setIconified(false);
    }

    @Override // j.c
    public void c() {
        F("", false);
        clearFocus();
        M(true);
        this.f1184f.setImeOptions(this.R);
        this.Q = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.L = true;
        super.clearFocus();
        this.f1184f.clearFocus();
        this.f1184f.setImeVisibility(false);
        this.L = false;
    }

    public void d() {
        int i10;
        if (this.f1193n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1187h.getPaddingLeft();
            Rect rect = new Rect();
            boolean b10 = c1.b(this);
            int dimensionPixelSize = this.F ? resources.getDimensionPixelSize(d.d.f5221e) + resources.getDimensionPixelSize(d.d.f5222f) : 0;
            this.f1184f.getDropDownBackground().getPadding(rect);
            if (b10) {
                i10 = -rect.left;
            } else {
                i10 = paddingLeft - (rect.left + dimensionPixelSize);
            }
            this.f1184f.setDropDownHorizontalOffset(i10);
            this.f1184f.setDropDownWidth((((this.f1193n.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public final Intent e(String str, Uri uri, String str2, String str3, int i10, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.P);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.T;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i10 != 0) {
            intent.putExtra("action_key", i10);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.S.getSearchActivity());
        return intent;
    }

    public final Intent f(Cursor cursor, int i10, String str) {
        int i11;
        String o10;
        try {
            try {
                String o11 = p0.o(cursor, "suggest_intent_action");
                if (o11 == null) {
                    o11 = this.S.getSuggestIntentAction();
                }
                if (o11 == null) {
                    o11 = "android.intent.action.SEARCH";
                }
                String str2 = o11;
                String o12 = p0.o(cursor, "suggest_intent_data");
                if (o12 == null) {
                    o12 = this.S.getSuggestIntentData();
                }
                if (o12 != null && (o10 = p0.o(cursor, "suggest_intent_data_id")) != null) {
                    o12 = o12 + "/" + Uri.encode(o10);
                }
                return e(str2, o12 == null ? null : Uri.parse(o12), p0.o(cursor, "suggest_intent_extra_data"), p0.o(cursor, "suggest_intent_query"), i10, str);
            } catch (RuntimeException unused) {
                i11 = -1;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Search suggestions cursor at row ");
                sb2.append(i11);
                sb2.append(" returned exception.");
                return null;
            }
        } catch (RuntimeException unused2) {
            i11 = cursor.getPosition();
            StringBuilder sb22 = new StringBuilder();
            sb22.append("Search suggestions cursor at row ");
            sb22.append(i11);
            sb22.append(" returned exception.");
            return null;
        }
    }

    public final Intent g(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.T;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public int getImeOptions() {
        return this.f1184f.getImeOptions();
    }

    public int getInputType() {
        return this.f1184f.getInputType();
    }

    public int getMaxWidth() {
        return this.M;
    }

    public CharSequence getQuery() {
        return this.f1184f.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.J;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.S;
        if (searchableInfo != null && searchableInfo.getHintId() != 0) {
            return getContext().getText(this.S.getHintId());
        }
        return this.f1205z;
    }

    public int getSuggestionCommitIconResId() {
        return this.f1202w;
    }

    public int getSuggestionRowLayout() {
        return this.f1201v;
    }

    public v0.a getSuggestionsAdapter() {
        return this.H;
    }

    public final Intent h(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    public final void i() {
        this.f1184f.dismissDropDown();
    }

    public void j() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1184f.refreshAutoCompleteResults();
            return;
        }
        n nVar = f1178g0;
        nVar.b(this.f1184f);
        nVar.a(this.f1184f);
    }

    public final void k(View view, Rect rect) {
        view.getLocationInWindow(this.f1197r);
        getLocationInWindow(this.f1198s);
        int[] iArr = this.f1197r;
        int i10 = iArr[1];
        int[] iArr2 = this.f1198s;
        int i11 = i10 - iArr2[1];
        int i12 = iArr[0] - iArr2[0];
        rect.set(i12, i11, view.getWidth() + i12, view.getHeight() + i11);
    }

    public final CharSequence l(CharSequence charSequence) {
        if (!this.F || this.f1200u == null) {
            return charSequence;
        }
        double textSize = this.f1184f.getTextSize();
        Double.isNaN(textSize);
        int i10 = (int) (textSize * 1.25d);
        this.f1200u.setBounds(0, 0, i10, i10);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1200u), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    public final boolean m() {
        SearchableInfo searchableInfo = this.S;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.S.getVoiceSearchLaunchWebSearch()) {
            intent = this.f1203x;
        } else if (this.S.getVoiceSearchLaunchRecognizer()) {
            intent = this.f1204y;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    public boolean n() {
        return this.G;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.U);
        post(this.V);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            k(this.f1184f, this.f1195p);
            Rect rect = this.f1196q;
            Rect rect2 = this.f1195p;
            rect.set(rect2.left, 0, rect2.right, i13 - i11);
            p pVar = this.f1194o;
            if (pVar == null) {
                p pVar2 = new p(this.f1196q, this.f1195p, this.f1184f);
                this.f1194o = pVar2;
                setTouchDelegate(pVar2);
                return;
            }
            pVar.a(this.f1196q, this.f1195p);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        if (n()) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            int i13 = this.M;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.M;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i12 = this.M) > 0) {
            size = Math.min(i12, size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(size2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        o oVar = (o) parcelable;
        super.onRestoreInstanceState(oVar.getSuperState());
        M(oVar.f1224f);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        o oVar = new o(super.onSaveInstanceState());
        oVar.f1224f = n();
        return oVar;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        D();
    }

    public final boolean p() {
        return (this.I || this.N) && !n();
    }

    public final void q(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed launch activity: ");
            sb2.append(intent);
        }
    }

    public void r(int i10, String str, String str2) {
        getContext().startActivity(e("android.intent.action.SEARCH", null, null, str2, i10, str));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i10, Rect rect) {
        if (this.L || !isFocusable()) {
            return false;
        }
        if (!n()) {
            boolean requestFocus = this.f1184f.requestFocus(i10, rect);
            if (requestFocus) {
                M(false);
            }
            return requestFocus;
        }
        return super.requestFocus(i10, rect);
    }

    public final boolean s(int i10, int i11, String str) {
        Cursor b10 = this.H.b();
        if (b10 == null || !b10.moveToPosition(i10)) {
            return false;
        }
        q(f(b10, i11, str));
        return true;
    }

    public void setAppSearchData(Bundle bundle) {
        this.T = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            t();
        } else {
            x();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.F == z10) {
            return;
        }
        this.F = z10;
        M(z10);
        I();
    }

    public void setImeOptions(int i10) {
        this.f1184f.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.f1184f.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.M = i10;
        requestLayout();
    }

    public void setOnCloseListener(k kVar) {
        this.B = kVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.C = onFocusChangeListener;
    }

    public void setOnQueryTextListener(l lVar) {
        this.A = lVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.E = onClickListener;
    }

    public void setOnSuggestionListener(m mVar) {
        this.D = mVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.J = charSequence;
        I();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        this.K = z10;
        v0.a aVar = this.H;
        if (aVar instanceof p0) {
            ((p0) aVar).x(z10 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.S = searchableInfo;
        if (searchableInfo != null) {
            J();
            I();
        }
        boolean m10 = m();
        this.N = m10;
        if (m10) {
            this.f1184f.setPrivateImeOptions("nm");
        }
        M(n());
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.I = z10;
        M(n());
    }

    public void setSuggestionsAdapter(v0.a aVar) {
        this.H = aVar;
        this.f1184f.setAdapter(aVar);
    }

    public void t() {
        if (TextUtils.isEmpty(this.f1184f.getText())) {
            if (this.F) {
                k kVar = this.B;
                if (kVar == null || !kVar.a()) {
                    clearFocus();
                    M(true);
                    return;
                }
                return;
            }
            return;
        }
        this.f1184f.setText("");
        this.f1184f.requestFocus();
        this.f1184f.setImeVisibility(true);
    }

    public boolean u(int i10, int i11, String str) {
        m mVar = this.D;
        if (mVar != null && mVar.b(i10)) {
            return false;
        }
        s(i10, 0, null);
        this.f1184f.setImeVisibility(false);
        i();
        return true;
    }

    public boolean v(int i10) {
        m mVar = this.D;
        if (mVar != null && mVar.a(i10)) {
            return false;
        }
        E(i10);
        return true;
    }

    public void w(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void x() {
        M(false);
        this.f1184f.requestFocus();
        this.f1184f.setImeVisibility(true);
        View.OnClickListener onClickListener = this.E;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void y() {
        Editable text = this.f1184f.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        l lVar = this.A;
        if (lVar == null || !lVar.b(text.toString())) {
            if (this.S != null) {
                r(0, null, text.toString());
            }
            this.f1184f.setImeVisibility(false);
            i();
        }
    }

    public boolean z(View view, int i10, KeyEvent keyEvent) {
        if (this.S != null && this.H != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i10 == 66 || i10 == 84 || i10 == 61) {
                return u(this.f1184f.getListSelection(), 0, null);
            }
            if (i10 == 21 || i10 == 22) {
                this.f1184f.setSelection(i10 == 21 ? 0 : this.f1184f.length());
                this.f1184f.setListSelection(0);
                this.f1184f.clearListSelection();
                this.f1184f.a();
                return true;
            }
            if (i10 == 19) {
                this.f1184f.getListSelection();
                return false;
            }
        }
        return false;
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.a.M);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1195p = new Rect();
        this.f1196q = new Rect();
        this.f1197r = new int[2];
        this.f1198s = new int[2];
        this.U = new b();
        this.V = new c();
        this.W = new WeakHashMap<>();
        f fVar = new f();
        this.f1179a0 = fVar;
        this.f1180b0 = new g();
        h hVar = new h();
        this.f1181c0 = hVar;
        i iVar = new i();
        this.f1182d0 = iVar;
        j jVar = new j();
        this.f1183e0 = jVar;
        this.f1185f0 = new a();
        int[] iArr = d.j.f5394n2;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        q0.b0.r0(this, context, iArr, attributeSet, v10.r(), i10, 0);
        LayoutInflater.from(context).inflate(v10.n(d.j.f5444x2, d.g.f5301r), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(d.f.D);
        this.f1184f = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1186g = findViewById(d.f.f5283z);
        View findViewById = findViewById(d.f.C);
        this.f1187h = findViewById;
        View findViewById2 = findViewById(d.f.J);
        this.f1188i = findViewById2;
        ImageView imageView = (ImageView) findViewById(d.f.f5281x);
        this.f1189j = imageView;
        ImageView imageView2 = (ImageView) findViewById(d.f.A);
        this.f1190k = imageView2;
        ImageView imageView3 = (ImageView) findViewById(d.f.f5282y);
        this.f1191l = imageView3;
        ImageView imageView4 = (ImageView) findViewById(d.f.E);
        this.f1192m = imageView4;
        ImageView imageView5 = (ImageView) findViewById(d.f.B);
        this.f1199t = imageView5;
        q0.b0.x0(findViewById, v10.g(d.j.f5449y2));
        q0.b0.x0(findViewById2, v10.g(d.j.C2));
        int i11 = d.j.B2;
        imageView.setImageDrawable(v10.g(i11));
        imageView2.setImageDrawable(v10.g(d.j.f5434v2));
        imageView3.setImageDrawable(v10.g(d.j.f5419s2));
        imageView4.setImageDrawable(v10.g(d.j.E2));
        imageView5.setImageDrawable(v10.g(i11));
        this.f1200u = v10.g(d.j.A2);
        y0.a(imageView, getResources().getString(d.h.f5317n));
        this.f1201v = v10.n(d.j.D2, d.g.f5300q);
        this.f1202w = v10.n(d.j.f5424t2, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.f1185f0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.f1180b0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(v10.a(d.j.f5439w2, true));
        int f10 = v10.f(d.j.f5404p2, -1);
        if (f10 != -1) {
            setMaxWidth(f10);
        }
        this.f1205z = v10.p(d.j.f5429u2);
        this.J = v10.p(d.j.f5454z2);
        int k10 = v10.k(d.j.f5414r2, -1);
        if (k10 != -1) {
            setImeOptions(k10);
        }
        int k11 = v10.k(d.j.f5409q2, -1);
        if (k11 != -1) {
            setInputType(k11);
        }
        setFocusable(v10.a(d.j.f5399o2, true));
        v10.w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1203x = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1204y = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1193n = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new e());
        }
        M(this.F);
        I();
    }
}
