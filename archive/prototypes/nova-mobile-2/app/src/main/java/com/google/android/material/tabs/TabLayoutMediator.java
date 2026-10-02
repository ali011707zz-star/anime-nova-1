package com.google.android.material.tabs;

import androidx.recyclerview.widget.RecyclerView;
import c2.a;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class TabLayoutMediator {
    private RecyclerView.h<?> adapter;
    private boolean attached;
    private final boolean autoRefresh;
    private TabLayoutOnPageChangeCallback onPageChangeCallback;
    private TabLayout.OnTabSelectedListener onTabSelectedListener;
    private RecyclerView.j pagerAdapterObserver;
    private final boolean smoothScroll;
    private final TabConfigurationStrategy tabConfigurationStrategy;
    private final TabLayout tabLayout;
    private final a viewPager;

    /* loaded from: classes.dex */
    public class PagerAdapterObserver extends RecyclerView.j {
        public PagerAdapterObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onChanged() {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeInserted(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeMoved(int i10, int i11, int i12) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeRemoved(int i10, int i11) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void onItemRangeChanged(int i10, int i11, Object obj) {
            TabLayoutMediator.this.populateTabsFromPagerAdapter();
        }
    }

    /* loaded from: classes.dex */
    public interface TabConfigurationStrategy {
        void onConfigureTab(TabLayout.Tab tab, int i10);
    }

    /* loaded from: classes.dex */
    public static class TabLayoutOnPageChangeCallback extends a.AbstractC0073a {
        private int previousScrollState;
        private int scrollState;
        private final WeakReference<TabLayout> tabLayoutRef;

        public TabLayoutOnPageChangeCallback(TabLayout tabLayout) {
            this.tabLayoutRef = new WeakReference<>(tabLayout);
            reset();
        }

        @Override // c2.a.AbstractC0073a
        public void onPageScrollStateChanged(int i10) {
            this.previousScrollState = this.scrollState;
            this.scrollState = i10;
        }

        @Override // c2.a.AbstractC0073a
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null) {
                int i12 = this.scrollState;
                tabLayout.setScrollPosition(i10, f10, i12 != 2 || this.previousScrollState == 1, (i12 == 2 && this.previousScrollState == 0) ? false : true);
            }
        }

        @Override // c2.a.AbstractC0073a
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.scrollState;
            tabLayout.selectTab(tabLayout.getTabAt(i10), i11 == 0 || (i11 == 2 && this.previousScrollState == 0));
        }

        public void reset() {
            this.scrollState = 0;
            this.previousScrollState = 0;
        }
    }

    /* loaded from: classes.dex */
    public static class ViewPagerOnTabSelectedListener implements TabLayout.OnTabSelectedListener {
        private final boolean smoothScroll;
        private final a viewPager;

        public ViewPagerOnTabSelectedListener(a aVar, boolean z10) {
            this.viewPager = aVar;
            this.smoothScroll = z10;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            this.viewPager.d(tab.getPosition(), this.smoothScroll);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public TabLayoutMediator(TabLayout tabLayout, a aVar, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, aVar, true, tabConfigurationStrategy);
    }

    public void attach() {
        if (!this.attached) {
            RecyclerView.h<?> adapter = this.viewPager.getAdapter();
            this.adapter = adapter;
            if (adapter != null) {
                this.attached = true;
                TabLayoutOnPageChangeCallback tabLayoutOnPageChangeCallback = new TabLayoutOnPageChangeCallback(this.tabLayout);
                this.onPageChangeCallback = tabLayoutOnPageChangeCallback;
                this.viewPager.b(tabLayoutOnPageChangeCallback);
                ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(this.viewPager, this.smoothScroll);
                this.onTabSelectedListener = viewPagerOnTabSelectedListener;
                this.tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) viewPagerOnTabSelectedListener);
                if (this.autoRefresh) {
                    PagerAdapterObserver pagerAdapterObserver = new PagerAdapterObserver();
                    this.pagerAdapterObserver = pagerAdapterObserver;
                    this.adapter.registerAdapterDataObserver(pagerAdapterObserver);
                }
                populateTabsFromPagerAdapter();
                this.tabLayout.setScrollPosition(this.viewPager.getCurrentItem(), StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, true);
                return;
            }
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        throw new IllegalStateException("TabLayoutMediator is already attached");
    }

    public void detach() {
        RecyclerView.h<?> hVar;
        if (this.autoRefresh && (hVar = this.adapter) != null) {
            hVar.unregisterAdapterDataObserver(this.pagerAdapterObserver);
            this.pagerAdapterObserver = null;
        }
        this.tabLayout.removeOnTabSelectedListener(this.onTabSelectedListener);
        this.viewPager.f(this.onPageChangeCallback);
        this.onTabSelectedListener = null;
        this.onPageChangeCallback = null;
        this.adapter = null;
        this.attached = false;
    }

    public boolean isAttached() {
        return this.attached;
    }

    public void populateTabsFromPagerAdapter() {
        this.tabLayout.removeAllTabs();
        RecyclerView.h<?> hVar = this.adapter;
        if (hVar != null) {
            int itemCount = hVar.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                TabLayout.Tab newTab = this.tabLayout.newTab();
                this.tabConfigurationStrategy.onConfigureTab(newTab, i10);
                this.tabLayout.addTab(newTab, false);
            }
            if (itemCount > 0) {
                int min = Math.min(this.viewPager.getCurrentItem(), this.tabLayout.getTabCount() - 1);
                if (min != this.tabLayout.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.tabLayout;
                    tabLayout.selectTab(tabLayout.getTabAt(min));
                }
            }
        }
    }

    public TabLayoutMediator(TabLayout tabLayout, a aVar, boolean z10, TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, aVar, z10, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(TabLayout tabLayout, a aVar, boolean z10, boolean z11, TabConfigurationStrategy tabConfigurationStrategy) {
        this.tabLayout = tabLayout;
        this.viewPager = aVar;
        this.autoRefresh = z10;
        this.smoothScroll = z11;
        this.tabConfigurationStrategy = tabConfigurationStrategy;
    }
}
