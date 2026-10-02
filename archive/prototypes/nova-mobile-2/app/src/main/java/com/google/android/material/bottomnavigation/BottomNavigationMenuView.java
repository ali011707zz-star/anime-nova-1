package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.e;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import org.apache.http.impl.auth.NTLMEngineImpl;
import q0.b0;

/* loaded from: classes.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {
    private final int activeItemMaxWidth;
    private final int activeItemMinWidth;
    private final int inactiveItemMaxWidth;
    private final int inactiveItemMinWidth;
    private final int itemHeight;
    private boolean itemHorizontalTranslationEnabled;
    private int[] tempChildWidths;

    public BottomNavigationMenuView(Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.inactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.inactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.activeItemMaxWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.activeItemMinWidth = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.itemHeight = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.tempChildWidths = new int[5];
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    public NavigationBarItemView createNavigationBarItemView(Context context) {
        return new BottomNavigationItemView(context);
    }

    public boolean isItemHorizontalTranslationEnabled() {
        return this.itemHorizontalTranslationEnabled;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                if (b0.E(this) == 1) {
                    int i18 = i14 - i16;
                    childAt.layout(i18 - childAt.getMeasuredWidth(), 0, i18, i15);
                } else {
                    childAt.layout(i16, 0, childAt.getMeasuredWidth() + i16, i15);
                }
                i16 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        e menu = getMenu();
        int size = View.MeasureSpec.getSize(i10);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.itemHeight, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        if (isShifting(getLabelVisibilityMode(), size2) && isItemHorizontalTranslationEnabled()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int i12 = this.activeItemMinWidth;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, Integer.MIN_VALUE), makeMeasureSpec);
                i12 = Math.max(i12, childAt.getMeasuredWidth());
            }
            int i13 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min = Math.min(size - (this.inactiveItemMinWidth * i13), Math.min(i12, this.activeItemMaxWidth));
            int i14 = size - min;
            int min2 = Math.min(i14 / (i13 == 0 ? 1 : i13), this.inactiveItemMaxWidth);
            int i15 = i14 - (i13 * min2);
            int i16 = 0;
            while (i16 < childCount) {
                if (getChildAt(i16).getVisibility() != 8) {
                    this.tempChildWidths[i16] = i16 == getSelectedItemPosition() ? min : min2;
                    if (i15 > 0) {
                        int[] iArr = this.tempChildWidths;
                        iArr[i16] = iArr[i16] + 1;
                        i15--;
                    }
                } else {
                    this.tempChildWidths[i16] = 0;
                }
                i16++;
            }
        } else {
            int min3 = Math.min(size / (size2 == 0 ? 1 : size2), this.activeItemMaxWidth);
            int i17 = size - (size2 * min3);
            for (int i18 = 0; i18 < childCount; i18++) {
                if (getChildAt(i18).getVisibility() != 8) {
                    int[] iArr2 = this.tempChildWidths;
                    iArr2[i18] = min3;
                    if (i17 > 0) {
                        iArr2[i18] = iArr2[i18] + 1;
                        i17--;
                    }
                } else {
                    this.tempChildWidths[i18] = 0;
                }
            }
        }
        int i19 = 0;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths[i20], NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i19 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i19, View.MeasureSpec.makeMeasureSpec(i19, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), 0), View.resolveSizeAndState(this.itemHeight, makeMeasureSpec, 0));
    }

    public void setItemHorizontalTranslationEnabled(boolean z10) {
        this.itemHorizontalTranslationEnabled = z10;
    }
}
