package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import d.j;
import java.lang.ref.WeakReference;
import q0.b0;

/* loaded from: classes.dex */
public class AlertController {
    public NestedScrollView A;
    public Drawable C;
    public ImageView D;
    public TextView E;
    public TextView F;
    public View G;
    public ListAdapter H;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;
    public Handler R;

    /* renamed from: a, reason: collision with root package name */
    public final Context f712a;

    /* renamed from: b, reason: collision with root package name */
    public final e.b f713b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f714c;

    /* renamed from: d, reason: collision with root package name */
    public final int f715d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f716e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f717f;

    /* renamed from: g, reason: collision with root package name */
    public ListView f718g;

    /* renamed from: h, reason: collision with root package name */
    public View f719h;

    /* renamed from: i, reason: collision with root package name */
    public int f720i;

    /* renamed from: j, reason: collision with root package name */
    public int f721j;

    /* renamed from: k, reason: collision with root package name */
    public int f722k;

    /* renamed from: l, reason: collision with root package name */
    public int f723l;

    /* renamed from: m, reason: collision with root package name */
    public int f724m;

    /* renamed from: o, reason: collision with root package name */
    public Button f726o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f727p;

    /* renamed from: q, reason: collision with root package name */
    public Message f728q;

    /* renamed from: r, reason: collision with root package name */
    public Drawable f729r;

    /* renamed from: s, reason: collision with root package name */
    public Button f730s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f731t;

    /* renamed from: u, reason: collision with root package name */
    public Message f732u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f733v;

    /* renamed from: w, reason: collision with root package name */
    public Button f734w;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence f735x;

    /* renamed from: y, reason: collision with root package name */
    public Message f736y;

    /* renamed from: z, reason: collision with root package name */
    public Drawable f737z;

    /* renamed from: n, reason: collision with root package name */
    public boolean f725n = false;
    public int B = 0;
    public int I = -1;
    public int Q = 0;
    public final View.OnClickListener S = new a();

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: f, reason: collision with root package name */
        public final int f738f;

        /* renamed from: g, reason: collision with root package name */
        public final int f739g;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f5379k2);
            this.f739g = obtainStyledAttributes.getDimensionPixelOffset(j.f5384l2, -1);
            this.f738f = obtainStyledAttributes.getDimensionPixelOffset(j.f5389m2, -1);
        }

        public void a(boolean z10, boolean z11) {
            if (z11 && z10) {
                return;
            }
            setPadding(getPaddingLeft(), z10 ? getPaddingTop() : this.f738f, getPaddingRight(), z11 ? getPaddingBottom() : this.f739g);
        }
    }

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message obtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.f726o && (message3 = alertController.f728q) != null) {
                obtain = Message.obtain(message3);
            } else if (view == alertController.f730s && (message2 = alertController.f732u) != null) {
                obtain = Message.obtain(message2);
            } else {
                obtain = (view != alertController.f734w || (message = alertController.f736y) == null) ? null : Message.obtain(message);
            }
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f713b).sendToTarget();
        }
    }

    /* loaded from: classes.dex */
    public class b implements NestedScrollView.b {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f741a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f742b;

        public b(View view, View view2) {
            this.f741a = view;
            this.f742b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.b
        public void a(NestedScrollView nestedScrollView, int i10, int i11, int i12, int i13) {
            AlertController.g(nestedScrollView, this.f741a, this.f742b);
        }
    }

    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f744f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f745g;

        public c(View view, View view2) {
            this.f744f = view;
            this.f745g = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.g(AlertController.this.A, this.f744f, this.f745g);
        }
    }

    /* loaded from: classes.dex */
    public class d implements AbsListView.OnScrollListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ View f747a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ View f748b;

        public d(View view, View view2) {
            this.f747a = view;
            this.f748b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            AlertController.g(absListView, this.f747a, this.f748b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i10) {
        }
    }

    /* loaded from: classes.dex */
    public class e implements Runnable {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ View f750f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ View f751g;

        public e(View view, View view2) {
            this.f750f = view;
            this.f751g = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.g(AlertController.this.f718g, this.f750f, this.f751g);
        }
    }

    /* loaded from: classes.dex */
    public static class f {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public boolean N;
        public AdapterView.OnItemSelectedListener O;
        public e P;

        /* renamed from: a, reason: collision with root package name */
        public final Context f753a;

        /* renamed from: b, reason: collision with root package name */
        public final LayoutInflater f754b;

        /* renamed from: d, reason: collision with root package name */
        public Drawable f756d;

        /* renamed from: f, reason: collision with root package name */
        public CharSequence f758f;

        /* renamed from: g, reason: collision with root package name */
        public View f759g;

        /* renamed from: h, reason: collision with root package name */
        public CharSequence f760h;

        /* renamed from: i, reason: collision with root package name */
        public CharSequence f761i;

        /* renamed from: j, reason: collision with root package name */
        public Drawable f762j;

        /* renamed from: k, reason: collision with root package name */
        public DialogInterface.OnClickListener f763k;

        /* renamed from: l, reason: collision with root package name */
        public CharSequence f764l;

        /* renamed from: m, reason: collision with root package name */
        public Drawable f765m;

        /* renamed from: n, reason: collision with root package name */
        public DialogInterface.OnClickListener f766n;

        /* renamed from: o, reason: collision with root package name */
        public CharSequence f767o;

        /* renamed from: p, reason: collision with root package name */
        public Drawable f768p;

        /* renamed from: q, reason: collision with root package name */
        public DialogInterface.OnClickListener f769q;

        /* renamed from: s, reason: collision with root package name */
        public DialogInterface.OnCancelListener f771s;

        /* renamed from: t, reason: collision with root package name */
        public DialogInterface.OnDismissListener f772t;

        /* renamed from: u, reason: collision with root package name */
        public DialogInterface.OnKeyListener f773u;

        /* renamed from: v, reason: collision with root package name */
        public CharSequence[] f774v;

        /* renamed from: w, reason: collision with root package name */
        public ListAdapter f775w;

        /* renamed from: x, reason: collision with root package name */
        public DialogInterface.OnClickListener f776x;

        /* renamed from: y, reason: collision with root package name */
        public int f777y;

        /* renamed from: z, reason: collision with root package name */
        public View f778z;

        /* renamed from: c, reason: collision with root package name */
        public int f755c = 0;

        /* renamed from: e, reason: collision with root package name */
        public int f757e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean Q = true;

        /* renamed from: r, reason: collision with root package name */
        public boolean f770r = true;

        /* loaded from: classes.dex */
        public class a extends ArrayAdapter<CharSequence> {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f779f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context, int i10, int i11, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i10, i11, charSequenceArr);
                this.f779f = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                boolean[] zArr = f.this.F;
                if (zArr != null && zArr[i10]) {
                    this.f779f.setItemChecked(i10, true);
                }
                return view2;
            }
        }

        /* loaded from: classes.dex */
        public class b extends CursorAdapter {

            /* renamed from: f, reason: collision with root package name */
            public final int f781f;

            /* renamed from: g, reason: collision with root package name */
            public final int f782g;

            /* renamed from: h, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f783h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ AlertController f784i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f783h = recycleListView;
                this.f784i = alertController;
                Cursor cursor2 = getCursor();
                this.f781f = cursor2.getColumnIndexOrThrow(f.this.L);
                this.f782g = cursor2.getColumnIndexOrThrow(f.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f781f));
                this.f783h.setItemChecked(cursor.getPosition(), cursor.getInt(this.f782g) == 1);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return f.this.f754b.inflate(this.f784i.M, viewGroup, false);
            }
        }

        /* loaded from: classes.dex */
        public class c implements AdapterView.OnItemClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ AlertController f786f;

            public c(AlertController alertController) {
                this.f786f = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                f.this.f776x.onClick(this.f786f.f713b, i10);
                if (f.this.H) {
                    return;
                }
                this.f786f.f713b.dismiss();
            }
        }

        /* loaded from: classes.dex */
        public class d implements AdapterView.OnItemClickListener {

            /* renamed from: f, reason: collision with root package name */
            public final /* synthetic */ RecycleListView f788f;

            /* renamed from: g, reason: collision with root package name */
            public final /* synthetic */ AlertController f789g;

            public d(RecycleListView recycleListView, AlertController alertController) {
                this.f788f = recycleListView;
                this.f789g = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                boolean[] zArr = f.this.F;
                if (zArr != null) {
                    zArr[i10] = this.f788f.isItemChecked(i10);
                }
                f.this.J.onClick(this.f789g.f713b, i10, this.f788f.isItemChecked(i10));
            }
        }

        /* loaded from: classes.dex */
        public interface e {
            void a(ListView listView);
        }

        public f(Context context) {
            this.f753a = context;
            this.f754b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(AlertController alertController) {
            View view = this.f759g;
            if (view != null) {
                alertController.m(view);
            } else {
                CharSequence charSequence = this.f758f;
                if (charSequence != null) {
                    alertController.r(charSequence);
                }
                Drawable drawable = this.f756d;
                if (drawable != null) {
                    alertController.o(drawable);
                }
                int i10 = this.f755c;
                if (i10 != 0) {
                    alertController.n(i10);
                }
                int i11 = this.f757e;
                if (i11 != 0) {
                    alertController.n(alertController.d(i11));
                }
            }
            CharSequence charSequence2 = this.f760h;
            if (charSequence2 != null) {
                alertController.p(charSequence2);
            }
            CharSequence charSequence3 = this.f761i;
            if (charSequence3 != null || this.f762j != null) {
                alertController.l(-1, charSequence3, this.f763k, null, this.f762j);
            }
            CharSequence charSequence4 = this.f764l;
            if (charSequence4 != null || this.f765m != null) {
                alertController.l(-2, charSequence4, this.f766n, null, this.f765m);
            }
            CharSequence charSequence5 = this.f767o;
            if (charSequence5 != null || this.f768p != null) {
                alertController.l(-3, charSequence5, this.f769q, null, this.f768p);
            }
            if (this.f774v != null || this.K != null || this.f775w != null) {
                b(alertController);
            }
            View view2 = this.f778z;
            if (view2 != null) {
                if (this.E) {
                    alertController.u(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.t(view2);
                    return;
                }
            }
            int i12 = this.f777y;
            if (i12 != 0) {
                alertController.s(i12);
            }
        }

        public final void b(AlertController alertController) {
            int i10;
            ListAdapter listAdapter;
            RecycleListView recycleListView = (RecycleListView) this.f754b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                if (this.K == null) {
                    listAdapter = new a(this.f753a, alertController.M, R.id.text1, this.f774v, recycleListView);
                } else {
                    listAdapter = new b(this.f753a, this.K, false, recycleListView, alertController);
                }
            } else {
                if (this.H) {
                    i10 = alertController.N;
                } else {
                    i10 = alertController.O;
                }
                int i11 = i10;
                if (this.K != null) {
                    listAdapter = new SimpleCursorAdapter(this.f753a, i11, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    listAdapter = this.f775w;
                    if (listAdapter == null) {
                        listAdapter = new h(this.f753a, i11, R.id.text1, this.f774v);
                    }
                }
            }
            e eVar = this.P;
            if (eVar != null) {
                eVar.a(recycleListView);
            }
            alertController.H = listAdapter;
            alertController.I = this.I;
            if (this.f776x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.O;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f718g = recycleListView;
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public WeakReference<DialogInterface> f791a;

        public g(DialogInterface dialogInterface) {
            this.f791a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == -3 || i10 == -2 || i10 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f791a.get(), message.what);
            } else {
                if (i10 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class h extends ArrayAdapter<CharSequence> {
        public h(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, e.b bVar, Window window) {
        this.f712a = context;
        this.f713b = bVar;
        this.f714c = window;
        this.R = new g(bVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, j.F, d.a.f5195n, 0);
        this.J = obtainStyledAttributes.getResourceId(j.G, 0);
        this.K = obtainStyledAttributes.getResourceId(j.I, 0);
        this.L = obtainStyledAttributes.getResourceId(j.K, 0);
        this.M = obtainStyledAttributes.getResourceId(j.L, 0);
        this.N = obtainStyledAttributes.getResourceId(j.N, 0);
        this.O = obtainStyledAttributes.getResourceId(j.J, 0);
        this.P = obtainStyledAttributes.getBoolean(j.M, true);
        this.f715d = obtainStyledAttributes.getDimensionPixelSize(j.H, 0);
        obtainStyledAttributes.recycle();
        bVar.supportRequestWindowFeature(1);
    }

    public static boolean A(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(d.a.f5194m, typedValue, true);
        return typedValue.data != 0;
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void g(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public final void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public Button c(int i10) {
        if (i10 == -3) {
            return this.f734w;
        }
        if (i10 == -2) {
            return this.f730s;
        }
        if (i10 != -1) {
            return null;
        }
        return this.f726o;
    }

    public int d(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f712a.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView e() {
        return this.f718g;
    }

    public void f() {
        this.f713b.setContentView(k());
        z();
    }

    public boolean h(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.k(keyEvent);
    }

    public boolean i(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.k(keyEvent);
    }

    public final ViewGroup j(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final int k() {
        int i10 = this.K;
        if (i10 == 0) {
            return this.J;
        }
        return this.Q == 1 ? i10 : this.J;
    }

    public void l(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i10, onClickListener);
        }
        if (i10 == -3) {
            this.f735x = charSequence;
            this.f736y = message;
            this.f737z = drawable;
        } else if (i10 == -2) {
            this.f731t = charSequence;
            this.f732u = message;
            this.f733v = drawable;
        } else {
            if (i10 == -1) {
                this.f727p = charSequence;
                this.f728q = message;
                this.f729r = drawable;
                return;
            }
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public void m(View view) {
        this.G = view;
    }

    public void n(int i10) {
        this.C = null;
        this.B = i10;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i10 != 0) {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void o(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable != null) {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    public void p(CharSequence charSequence) {
        this.f717f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public final void q(ViewGroup viewGroup, View view, int i10, int i11) {
        View findViewById = this.f714c.findViewById(d.f.f5279v);
        View findViewById2 = this.f714c.findViewById(d.f.f5278u);
        if (Build.VERSION.SDK_INT >= 23) {
            b0.M0(view, i10, i11);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        if (findViewById != null && (i10 & 1) == 0) {
            viewGroup.removeView(findViewById);
            findViewById = null;
        }
        if (findViewById2 != null && (i10 & 2) == 0) {
            viewGroup.removeView(findViewById2);
            findViewById2 = null;
        }
        if (findViewById == null && findViewById2 == null) {
            return;
        }
        if (this.f717f != null) {
            this.A.setOnScrollChangeListener(new b(findViewById, findViewById2));
            this.A.post(new c(findViewById, findViewById2));
            return;
        }
        ListView listView = this.f718g;
        if (listView != null) {
            listView.setOnScrollListener(new d(findViewById, findViewById2));
            this.f718g.post(new e(findViewById, findViewById2));
            return;
        }
        if (findViewById != null) {
            viewGroup.removeView(findViewById);
        }
        if (findViewById2 != null) {
            viewGroup.removeView(findViewById2);
        }
    }

    public void r(CharSequence charSequence) {
        this.f716e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void s(int i10) {
        this.f719h = null;
        this.f720i = i10;
        this.f725n = false;
    }

    public void t(View view) {
        this.f719h = view;
        this.f720i = 0;
        this.f725n = false;
    }

    public void u(View view, int i10, int i11, int i12, int i13) {
        this.f719h = view;
        this.f720i = 0;
        this.f725n = true;
        this.f721j = i10;
        this.f722k = i11;
        this.f723l = i12;
        this.f724m = i13;
    }

    public final void v(ViewGroup viewGroup) {
        int i10;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f726o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f727p) && this.f729r == null) {
            this.f726o.setVisibility(8);
            i10 = 0;
        } else {
            this.f726o.setText(this.f727p);
            Drawable drawable = this.f729r;
            if (drawable != null) {
                int i11 = this.f715d;
                drawable.setBounds(0, 0, i11, i11);
                this.f726o.setCompoundDrawables(this.f729r, null, null, null);
            }
            this.f726o.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f730s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f731t) && this.f733v == null) {
            this.f730s.setVisibility(8);
        } else {
            this.f730s.setText(this.f731t);
            Drawable drawable2 = this.f733v;
            if (drawable2 != null) {
                int i12 = this.f715d;
                drawable2.setBounds(0, 0, i12, i12);
                this.f730s.setCompoundDrawables(this.f733v, null, null, null);
            }
            this.f730s.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f734w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f735x) && this.f737z == null) {
            this.f734w.setVisibility(8);
        } else {
            this.f734w.setText(this.f735x);
            Drawable drawable3 = this.f737z;
            if (drawable3 != null) {
                int i13 = this.f715d;
                drawable3.setBounds(0, 0, i13, i13);
                this.f734w.setCompoundDrawables(this.f737z, null, null, null);
            }
            this.f734w.setVisibility(0);
            i10 |= 4;
        }
        if (A(this.f712a)) {
            if (i10 == 1) {
                b(this.f726o);
            } else if (i10 == 2) {
                b(this.f730s);
            } else if (i10 == 4) {
                b(this.f734w);
            }
        }
        if (i10 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    public final void w(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f714c.findViewById(d.f.f5280w);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f717f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f718g != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
            int indexOfChild = viewGroup2.indexOfChild(this.A);
            viewGroup2.removeViewAt(indexOfChild);
            viewGroup2.addView(this.f718g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        viewGroup.setVisibility(8);
    }

    public final void x(ViewGroup viewGroup) {
        View view = this.f719h;
        if (view == null) {
            view = this.f720i != 0 ? LayoutInflater.from(this.f712a).inflate(this.f720i, viewGroup, false) : null;
        }
        boolean z10 = view != null;
        if (!z10 || !a(view)) {
            this.f714c.setFlags(131072, 131072);
        }
        if (z10) {
            FrameLayout frameLayout = (FrameLayout) this.f714c.findViewById(d.f.f5271n);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f725n) {
                frameLayout.setPadding(this.f721j, this.f722k, this.f723l, this.f724m);
            }
            if (this.f718g != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.a) viewGroup.getLayoutParams())).weight = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    public final void y(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f714c.findViewById(d.f.O).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f714c.findViewById(R.id.icon);
        if ((!TextUtils.isEmpty(this.f716e)) && this.P) {
            TextView textView = (TextView) this.f714c.findViewById(d.f.f5267j);
            this.E = textView;
            textView.setText(this.f716e);
            int i10 = this.B;
            if (i10 != 0) {
                this.D.setImageResource(i10);
                return;
            }
            Drawable drawable = this.C;
            if (drawable != null) {
                this.D.setImageDrawable(drawable);
                return;
            } else {
                this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
                this.D.setVisibility(8);
                return;
            }
        }
        this.f714c.findViewById(d.f.O).setVisibility(8);
        this.D.setVisibility(8);
        viewGroup.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void z() {
        View findViewById;
        ListAdapter listAdapter;
        View findViewById2;
        View findViewById3 = this.f714c.findViewById(d.f.f5277t);
        int i10 = d.f.P;
        View findViewById4 = findViewById3.findViewById(i10);
        int i11 = d.f.f5270m;
        View findViewById5 = findViewById3.findViewById(i11);
        int i12 = d.f.f5268k;
        View findViewById6 = findViewById3.findViewById(i12);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(d.f.f5272o);
        x(viewGroup);
        View findViewById7 = viewGroup.findViewById(i10);
        View findViewById8 = viewGroup.findViewById(i11);
        View findViewById9 = viewGroup.findViewById(i12);
        ViewGroup j10 = j(findViewById7, findViewById4);
        ViewGroup j11 = j(findViewById8, findViewById5);
        ViewGroup j12 = j(findViewById9, findViewById6);
        w(j11);
        v(j12);
        y(j10);
        boolean z10 = viewGroup.getVisibility() != 8;
        boolean z11 = (j10 == null || j10.getVisibility() == 8) ? 0 : 1;
        boolean z12 = (j12 == null || j12.getVisibility() == 8) ? false : true;
        if (!z12 && j11 != null && (findViewById2 = j11.findViewById(d.f.K)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z11 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View findViewById10 = (this.f717f == null && this.f718g == null) ? null : j10.findViewById(d.f.N);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        } else if (j11 != null && (findViewById = j11.findViewById(d.f.L)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f718g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).a(z11, z12);
        }
        if (!z10) {
            View view = this.f718g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                q(j11, view, z11 | (z12 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f718g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i13 = this.I;
        if (i13 > -1) {
            listView2.setItemChecked(i13, true);
            listView2.setSelection(i13);
        }
    }
}
