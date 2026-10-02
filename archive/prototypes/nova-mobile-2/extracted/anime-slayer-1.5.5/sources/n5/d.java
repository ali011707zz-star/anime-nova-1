package n5;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import io.wax911.support.SupportExtentionKt;
import io.wax911.support.base.animation.SupportAnimation;
import io.wax911.support.base.event.ItemClickListener;
import io.wax911.support.base.event.RecyclerChangeListener;
import io.wax911.support.custom.animation.ScaleAnimation;
import io.wax911.support.custom.recycler.SupportViewHolder;
import io.wax911.support.util.SupportActionUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import jc.l;
import jc.m;
import kotlin.NoWhenBranchMatchedException;
import vb.e;
import vb.f;
import wb.q;

/* compiled from: SupportViewAdapter.kt */
/* loaded from: classes.dex */
public abstract class d<T> extends RecyclerView.h<SupportViewHolder<T>> implements Filterable, RecyclerChangeListener<T> {

    /* renamed from: f, reason: collision with root package name */
    public r5.b<?> f11251f;

    /* renamed from: g, reason: collision with root package name */
    public ItemClickListener<T> f11252g;

    /* renamed from: h, reason: collision with root package name */
    public SupportActionUtil<T> f11253h;

    /* renamed from: i, reason: collision with root package name */
    public int f11254i;

    /* renamed from: j, reason: collision with root package name */
    public SupportAnimation f11255j = new ScaleAnimation();

    /* renamed from: k, reason: collision with root package name */
    public final e f11256k = f.a(a.f11258f);

    /* renamed from: l, reason: collision with root package name */
    public List<? extends T> f11257l;

    /* compiled from: SupportViewAdapter.kt */
    /* loaded from: classes.dex */
    public static final class a extends m implements ic.a<ArrayList<T>> {

        /* renamed from: f, reason: collision with root package name */
        public static final a f11258f = new a();

        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ArrayList<T> invoke() {
            return new ArrayList<>();
        }
    }

    /* compiled from: SupportViewAdapter.kt */
    /* loaded from: classes.dex */
    public static final class b extends Filter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ d<T> f11259a;

        public b(d<T> dVar) {
            this.f11259a = dVar;
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = Collections.EMPTY_LIST;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            if (filterResults == null) {
                return;
            }
            d<T> dVar = this.f11259a;
            dVar.h().clear();
            List<T> h10 = dVar.h();
            Object obj = filterResults.values;
            if (obj != null) {
                q.t(h10, (Collection) obj);
                dVar.notifyDataSetChanged();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.Collection<T of com.anslayer.ui.base.SupportViewAdapter.getFilter.<no name provided>.publishResults$lambda-1>");
        }
    }

    /* compiled from: SupportViewAdapter.kt */
    /* loaded from: classes.dex */
    public static final class c extends GridLayoutManager.c {

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ d<T> f11260e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ GridLayoutManager f11261f;

        public c(d<T> dVar, GridLayoutManager gridLayoutManager) {
            this.f11260e = dVar;
            this.f11261f = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int f(int i10) {
            if (this.f11260e.k(i10)) {
                return 1;
            }
            return this.f11261f.A();
        }
    }

    public final void e(SupportViewHolder<T> supportViewHolder, int i10) {
        SupportAnimation supportAnimation;
        if (supportViewHolder == null) {
            return;
        }
        int i11 = 0;
        if ((i10 > this.f11254i) && (supportAnimation = this.f11255j) != null) {
            View view = supportViewHolder.itemView;
            l.e(view, "h.itemView");
            Animator[] animators = supportAnimation.getAnimators(view);
            int length = animators.length;
            while (i11 < length) {
                Animator animator = animators[i11];
                i11++;
                animator.setDuration(supportAnimation.getAnimationDuration());
                animator.setInterpolator(supportAnimation.getInterpolator());
                animator.start();
            }
        }
        this.f11254i = i10;
    }

    public final void f() {
        h().clear();
        if (this.f11257l != null) {
            this.f11257l = new ArrayList();
        }
        notifyDataSetChanged();
    }

    public final ItemClickListener<T> g() {
        return this.f11252g;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new b(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return h().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public long getItemId(int i10) {
        if (!hasStableIds()) {
            return super.getItemId(i10);
        }
        boolean z10 = h().get(i10) != null;
        if (z10) {
            l.c(h().get(i10));
            return r3.hashCode();
        }
        if (z10) {
            throw new NoWhenBranchMatchedException();
        }
        return 0L;
    }

    public final List<T> h() {
        return (List) this.f11256k.getValue();
    }

    public final SupportActionUtil<T> i() {
        return this.f11253h;
    }

    public final boolean j() {
        List<T> h10 = h();
        return !(h10 == null || h10.isEmpty());
    }

    public final boolean k(int i10) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(SupportViewHolder<T> supportViewHolder, int i10) {
        l.f(supportViewHolder, "holder");
        if (getItemCount() > 0) {
            e(supportViewHolder, i10);
            T t10 = h().get(i10);
            supportViewHolder.setClickListener(g());
            supportViewHolder.setSupportActionUtil(i());
            supportViewHolder.onBindViewHolder(t10);
            supportViewHolder.onBindSelectionState(t10);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public void onViewAttachedToWindow(SupportViewHolder<T> supportViewHolder) {
        l.f(supportViewHolder, "holder");
        super.onViewAttachedToWindow(supportViewHolder);
        if (supportViewHolder.itemView.getLayoutParams() instanceof StaggeredGridLayoutManager.c) {
            ViewGroup.LayoutParams layoutParams = supportViewHolder.itemView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
            }
            r((StaggeredGridLayoutManager.c) layoutParams, supportViewHolder.getBindingAdapterPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(SupportViewHolder<T> supportViewHolder) {
        l.f(supportViewHolder, "holder");
        super.onViewDetachedFromWindow(supportViewHolder);
        supportViewHolder.itemView.clearAnimation();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(SupportViewHolder<T> supportViewHolder) {
        l.f(supportViewHolder, "holder");
        supportViewHolder.onViewRecycled();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        l.f(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.p layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            q((GridLayoutManager) layoutManager);
        }
    }

    @Override // io.wax911.support.base.event.RecyclerChangeListener
    public void onItemChanged(T t10) {
        int indexOfIterable = SupportExtentionKt.indexOfIterable(h(), t10);
        h().set(indexOfIterable, t10);
        notifyItemChanged(indexOfIterable);
    }

    @Override // io.wax911.support.base.event.RecyclerChangeListener
    public void onItemRangeChanged(List<? extends T> list) {
        l.f(list, "swap");
        int itemCount = getItemCount();
        int size = list.size() - itemCount;
        SupportExtentionKt.replaceWith(h(), list);
        notifyItemRangeChanged(itemCount, size);
    }

    @Override // io.wax911.support.base.event.RecyclerChangeListener
    public void onItemRangeInserted(List<? extends T> list) {
        l.f(list, "swap");
        int itemCount = getItemCount();
        h().addAll(list);
        int itemCount2 = getItemCount() - itemCount;
        if (itemCount2 > 5) {
            notifyItemRangeInserted(itemCount, itemCount2);
        } else if (itemCount2 != 0) {
            notifyDataSetChanged();
        }
    }

    @Override // io.wax911.support.base.event.RecyclerChangeListener
    public void onItemRemoved(T t10) {
        int indexOfIterable = SupportExtentionKt.indexOfIterable(h(), t10);
        h().remove(indexOfIterable);
        notifyItemRemoved(indexOfIterable);
    }

    @Override // io.wax911.support.base.event.RecyclerChangeListener
    public void onItemsInserted(List<? extends T> list) {
        l.f(list, "swap");
        SupportExtentionKt.replaceWith(h(), list);
        notifyDataSetChanged();
    }

    public final void p(ItemClickListener<T> itemClickListener) {
        this.f11252g = itemClickListener;
    }

    public final void q(GridLayoutManager gridLayoutManager) {
        gridLayoutManager.J(new c(this, gridLayoutManager));
    }

    public final void r(StaggeredGridLayoutManager.c cVar, int i10) {
        if (k(i10)) {
            cVar.i(true);
        }
    }

    public final void s(r5.b<?> bVar) {
        this.f11251f = bVar;
    }

    public final void t(SupportActionUtil<T> supportActionUtil) {
        if (supportActionUtil == null) {
            supportActionUtil = null;
        } else {
            supportActionUtil.setRecyclerAdapter(this);
        }
        this.f11253h = supportActionUtil;
    }
}
