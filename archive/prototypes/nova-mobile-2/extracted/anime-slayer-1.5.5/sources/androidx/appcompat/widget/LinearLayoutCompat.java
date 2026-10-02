package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    /* loaded from: classes.dex */
    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i10, int i11) {
            super(i10, i11);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    private void forceUniformHeight(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        for (int i12 = 0; i12 < i10; i12++) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i13 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i11, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i13;
                }
            }
        }
    }

    private void forceUniformWidth(int i10, int i11) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        for (int i12 = 0; i12 < i10; i12++) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i13 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i11, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i13;
                }
            }
        }
    }

    private void setChildFrame(View view, int i10, int i11, int i12, int i13) {
        view.layout(i10, i11, i12 + i10, i13 + i11);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i10;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean b10 = c1.b(this);
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i11)) {
                a aVar = (a) virtualChildAt.getLayoutParams();
                if (b10) {
                    left2 = virtualChildAt.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else {
                    left2 = (virtualChildAt.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left2);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                a aVar2 = (a) virtualChildAt2.getLayoutParams();
                if (b10) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i10 = this.mDividerWidth;
                    right = left - i10;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (b10) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i10 = this.mDividerWidth;
                right = left - i10;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i10)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout.LayoutParams) ((a) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = virtualChildAt2.getBottom() + ((LinearLayout.LayoutParams) ((a) virtualChildAt2.getLayoutParams())).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i10, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i10);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(i10, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i10, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.mBaselineAlignedChildIndex;
        if (childCount > i11) {
            View childAt = getChildAt(i11);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.mBaselineAlignedChildIndex == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i12 = this.mBaselineChildTop;
            if (this.mOrientation == 1 && (i10 = this.mGravity & 112) != 48) {
                if (i10 == 16) {
                    i12 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                } else if (i10 == 80) {
                    i12 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                }
            }
            return i12 + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i10) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i10) {
        return getChildAt(i10);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public boolean hasDividerBeforeChildAt(int i10) {
        if (i10 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        if (i10 == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutHorizontal(int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean b10 = c1.b(this);
        int paddingTop = getPaddingTop();
        int i23 = i13 - i11;
        int paddingBottom = i23 - getPaddingBottom();
        int paddingBottom2 = (i23 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i24 = this.mGravity;
        int i25 = i24 & 112;
        boolean z10 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int b11 = q0.e.b(8388615 & i24, q0.b0.E(this));
        if (b11 == 1) {
            paddingLeft = getPaddingLeft() + (((i12 - i10) - this.mTotalLength) / 2);
        } else if (b11 != 5) {
            paddingLeft = getPaddingLeft();
        } else {
            paddingLeft = ((getPaddingLeft() + i12) - i10) - this.mTotalLength;
        }
        if (b10) {
            i14 = virtualChildCount - 1;
            i15 = -1;
        } else {
            i14 = 0;
            i15 = 1;
        }
        int i26 = 0;
        while (i26 < virtualChildCount) {
            int i27 = i14 + (i15 * i26);
            View virtualChildAt = getVirtualChildAt(i27);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i27);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                a aVar = (a) virtualChildAt.getLayoutParams();
                int i28 = i26;
                if (z10) {
                    i16 = virtualChildCount;
                    if (((LinearLayout.LayoutParams) aVar).height != -1) {
                        i17 = virtualChildAt.getBaseline();
                        i18 = ((LinearLayout.LayoutParams) aVar).gravity;
                        if (i18 < 0) {
                            i18 = i25;
                        }
                        i19 = i18 & 112;
                        i20 = i25;
                        if (i19 != 16) {
                            i21 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + ((LinearLayout.LayoutParams) aVar).topMargin) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        } else if (i19 == 48) {
                            i21 = ((LinearLayout.LayoutParams) aVar).topMargin + paddingTop;
                            if (i17 != -1) {
                                i21 += iArr[1] - i17;
                            }
                        } else if (i19 != 80) {
                            i21 = paddingTop;
                        } else {
                            i21 = (paddingBottom - measuredHeight) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                            if (i17 != -1) {
                                i21 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i17);
                            }
                        }
                        if (hasDividerBeforeChildAt(i27)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i29 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                        i22 = paddingTop;
                        setChildFrame(virtualChildAt, i29 + getLocationOffset(virtualChildAt), i21, measuredWidth, measuredHeight);
                        int nextLocationOffset = i29 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(virtualChildAt);
                        i26 = i28 + getChildrenSkipCount(virtualChildAt, i27);
                        paddingLeft = nextLocationOffset;
                        i26++;
                        virtualChildCount = i16;
                        i25 = i20;
                        paddingTop = i22;
                    }
                } else {
                    i16 = virtualChildCount;
                }
                i17 = -1;
                i18 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i18 < 0) {
                }
                i19 = i18 & 112;
                i20 = i25;
                if (i19 != 16) {
                }
                if (hasDividerBeforeChildAt(i27)) {
                }
                int i292 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                i22 = paddingTop;
                setChildFrame(virtualChildAt, i292 + getLocationOffset(virtualChildAt), i21, measuredWidth, measuredHeight);
                int nextLocationOffset2 = i292 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(virtualChildAt);
                i26 = i28 + getChildrenSkipCount(virtualChildAt, i27);
                paddingLeft = nextLocationOffset2;
                i26++;
                virtualChildCount = i16;
                i25 = i20;
                paddingTop = i22;
            }
            i22 = paddingTop;
            i16 = virtualChildCount;
            i20 = i25;
            i26++;
            virtualChildCount = i16;
            i25 = i20;
            paddingTop = i22;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutVertical(int i10, int i11, int i12, int i13) {
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int paddingLeft = getPaddingLeft();
        int i17 = i12 - i10;
        int paddingRight = i17 - getPaddingRight();
        int paddingRight2 = (i17 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i18 = this.mGravity;
        int i19 = i18 & 112;
        int i20 = i18 & 8388615;
        if (i19 == 16) {
            paddingTop = getPaddingTop() + (((i13 - i11) - this.mTotalLength) / 2);
        } else if (i19 != 80) {
            paddingTop = getPaddingTop();
        } else {
            paddingTop = ((getPaddingTop() + i13) - i11) - this.mTotalLength;
        }
        int i21 = 0;
        while (i21 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i21);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(i21);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                a aVar = (a) virtualChildAt.getLayoutParams();
                int i22 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i22 < 0) {
                    i22 = i20;
                }
                int b10 = q0.e.b(i22, q0.b0.E(this)) & 7;
                if (b10 == 1) {
                    i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                    i15 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else if (b10 != 5) {
                    i16 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    int i23 = i16;
                    if (hasDividerBeforeChildAt(i21)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i24 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    setChildFrame(virtualChildAt, i23, i24 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                    int nextLocationOffset = i24 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(virtualChildAt);
                    i21 += getChildrenSkipCount(virtualChildAt, i21);
                    paddingTop = nextLocationOffset;
                } else {
                    i14 = paddingRight - measuredWidth;
                    i15 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                }
                i16 = i14 - i15;
                int i232 = i16;
                if (hasDividerBeforeChildAt(i21)) {
                }
                int i242 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                setChildFrame(virtualChildAt, i232, i242 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset2 = i242 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(virtualChildAt);
                i21 += getChildrenSkipCount(virtualChildAt, i21);
                paddingTop = nextLocationOffset2;
            }
            i21++;
        }
    }

    public void measureChildBeforeLayout(View view, int i10, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    /* JADX WARN: Removed duplicated region for block: B:195:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureHorizontal(int i10, int i11) {
        int[] iArr;
        int i12;
        int max;
        int i13;
        int i14;
        int max2;
        int i15;
        int i16;
        int i17;
        float f10;
        int i18;
        boolean z10;
        int baseline;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean z11;
        boolean z12;
        View view;
        int i24;
        boolean z13;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i25;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z14 = this.mBaselineAligned;
        boolean z15 = this.mUseLargestChild;
        int i26 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
        boolean z16 = mode == 1073741824;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        boolean z17 = false;
        int i32 = 0;
        boolean z18 = true;
        boolean z19 = false;
        while (true) {
            iArr = iArr3;
            if (i27 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(i27);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i27);
            } else if (virtualChildAt.getVisibility() == 8) {
                i27 += getChildrenSkipCount(virtualChildAt, i27);
            } else {
                if (hasDividerBeforeChildAt(i27)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                a aVar = (a) virtualChildAt.getLayoutParams();
                float f12 = ((LinearLayout.LayoutParams) aVar).weight;
                float f13 = f11 + f12;
                if (mode == i26 && ((LinearLayout.LayoutParams) aVar).width == 0 && f12 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                    if (z16) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                    } else {
                        int i33 = this.mTotalLength;
                        this.mTotalLength = Math.max(i33, ((LinearLayout.LayoutParams) aVar).leftMargin + i33 + ((LinearLayout.LayoutParams) aVar).rightMargin);
                    }
                    if (z14) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(makeMeasureSpec, makeMeasureSpec);
                        i23 = i27;
                        z11 = z15;
                        z12 = z14;
                        view = virtualChildAt;
                    } else {
                        i23 = i27;
                        z11 = z15;
                        z12 = z14;
                        view = virtualChildAt;
                        i24 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                        z17 = true;
                        if (mode2 == i24 && ((LinearLayout.LayoutParams) aVar).height == -1) {
                            z13 = true;
                            z19 = true;
                        } else {
                            z13 = false;
                        }
                        int i34 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i34;
                        i32 = View.combineMeasuredStates(i32, view.getMeasuredState());
                        if (z12 && (baseline2 = view.getBaseline()) != -1) {
                            i25 = ((LinearLayout.LayoutParams) aVar).gravity;
                            if (i25 < 0) {
                                i25 = this.mGravity;
                            }
                            int i35 = (((i25 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i35] = Math.max(iArr2[i35], baseline2);
                            iArr[i35] = Math.max(iArr[i35], measuredHeight - baseline2);
                        }
                        i29 = Math.max(i29, measuredHeight);
                        z18 = !z18 && ((LinearLayout.LayoutParams) aVar).height == -1;
                        if (((LinearLayout.LayoutParams) aVar).weight <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            if (!z13) {
                                i34 = measuredHeight;
                            }
                            i31 = Math.max(i31, i34);
                        } else {
                            int i36 = i31;
                            if (!z13) {
                                i34 = measuredHeight;
                            }
                            i30 = Math.max(i30, i34);
                            i31 = i36;
                        }
                        int i37 = i23;
                        childrenSkipCount = getChildrenSkipCount(view, i37) + i37;
                        f11 = f13;
                        i27 = childrenSkipCount + 1;
                        iArr3 = iArr;
                        z15 = z11;
                        z14 = z12;
                        i26 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                    }
                } else {
                    if (((LinearLayout.LayoutParams) aVar).width != 0 || f12 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        i22 = Integer.MIN_VALUE;
                    } else {
                        ((LinearLayout.LayoutParams) aVar).width = -2;
                        i22 = 0;
                    }
                    i23 = i27;
                    int i38 = i22;
                    z11 = z15;
                    z12 = z14;
                    measureChildBeforeLayout(virtualChildAt, i23, i10, f13 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? this.mTotalLength : 0, i11, 0);
                    if (i38 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) aVar).width = i38;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z16) {
                        view = virtualChildAt;
                        this.mTotalLength += ((LinearLayout.LayoutParams) aVar).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(view);
                    } else {
                        view = virtualChildAt;
                        int i39 = this.mTotalLength;
                        this.mTotalLength = Math.max(i39, i39 + measuredWidth + ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin + getNextLocationOffset(view));
                    }
                    if (z11) {
                        i28 = Math.max(measuredWidth, i28);
                    }
                }
                i24 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                if (mode2 == i24) {
                }
                z13 = false;
                int i342 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i342;
                i32 = View.combineMeasuredStates(i32, view.getMeasuredState());
                if (z12) {
                    i25 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i25 < 0) {
                    }
                    int i352 = (((i25 & 112) >> 4) & (-2)) >> 1;
                    iArr2[i352] = Math.max(iArr2[i352], baseline2);
                    iArr[i352] = Math.max(iArr[i352], measuredHeight - baseline2);
                }
                i29 = Math.max(i29, measuredHeight);
                if (z18) {
                }
                if (((LinearLayout.LayoutParams) aVar).weight <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                }
                int i372 = i23;
                childrenSkipCount = getChildrenSkipCount(view, i372) + i372;
                f11 = f13;
                i27 = childrenSkipCount + 1;
                iArr3 = iArr;
                z15 = z11;
                z14 = z12;
                i26 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
            }
            childrenSkipCount = i27;
            z11 = z15;
            z12 = z14;
            i27 = childrenSkipCount + 1;
            iArr3 = iArr;
            z15 = z11;
            z14 = z12;
            i26 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
        }
        boolean z20 = z15;
        boolean z21 = z14;
        int i40 = i29;
        int i41 = i30;
        int i42 = i31;
        int i43 = i32;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            max = i40;
            i12 = i43;
        } else {
            i12 = i43;
            max = Math.max(i40, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z20 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i44 = 0;
            while (i44 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i44);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i44);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i44 += getChildrenSkipCount(virtualChildAt2, i44);
                } else {
                    a aVar2 = (a) virtualChildAt2.getLayoutParams();
                    if (z16) {
                        this.mTotalLength += ((LinearLayout.LayoutParams) aVar2).leftMargin + i28 + ((LinearLayout.LayoutParams) aVar2).rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i45 = this.mTotalLength;
                        i21 = max;
                        this.mTotalLength = Math.max(i45, i45 + i28 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + getNextLocationOffset(virtualChildAt2));
                        i44++;
                        max = i21;
                    }
                }
                i21 = max;
                i44++;
                max = i21;
            }
        }
        int i46 = max;
        int paddingLeft = this.mTotalLength + getPaddingLeft() + getPaddingRight();
        this.mTotalLength = paddingLeft;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i10, 0);
        int i47 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (!z17 && (i47 == 0 || f11 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
            i15 = Math.max(i41, i42);
            if (z20 && mode != 1073741824) {
                for (int i48 = 0; i48 < virtualChildCount; i48++) {
                    View virtualChildAt3 = getVirtualChildAt(i48);
                    if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) virtualChildAt3.getLayoutParams())).weight > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i28, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredHeight(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                    }
                }
            }
            i13 = i11;
            i14 = virtualChildCount;
            max2 = i46;
        } else {
            float f14 = this.mWeightSum;
            if (f14 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                f11 = f14;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i49 = i41;
            int i50 = i12;
            int i51 = -1;
            int i52 = 0;
            while (i52 < virtualChildCount) {
                View virtualChildAt4 = getVirtualChildAt(i52);
                if (virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8) {
                    i16 = i47;
                    i17 = virtualChildCount;
                } else {
                    a aVar3 = (a) virtualChildAt4.getLayoutParams();
                    float f15 = ((LinearLayout.LayoutParams) aVar3).weight;
                    if (f15 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        int i53 = (int) ((i47 * f15) / f11);
                        float f16 = f11 - f15;
                        int i54 = i47 - i53;
                        i17 = virtualChildCount;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin, ((LinearLayout.LayoutParams) aVar3).height);
                        if (((LinearLayout.LayoutParams) aVar3).width == 0) {
                            i20 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                            if (mode == 1073741824) {
                                if (i53 <= 0) {
                                    i53 = 0;
                                }
                                virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i53, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), childMeasureSpec);
                                i50 = View.combineMeasuredStates(i50, virtualChildAt4.getMeasuredState() & (-16777216));
                                f11 = f16;
                                i16 = i54;
                            }
                        } else {
                            i20 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                        }
                        int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i53;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i20), childMeasureSpec);
                        i50 = View.combineMeasuredStates(i50, virtualChildAt4.getMeasuredState() & (-16777216));
                        f11 = f16;
                        i16 = i54;
                    } else {
                        i16 = i47;
                        i17 = virtualChildCount;
                    }
                    if (z16) {
                        this.mTotalLength += virtualChildAt4.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + getNextLocationOffset(virtualChildAt4);
                        f10 = f11;
                    } else {
                        int i55 = this.mTotalLength;
                        f10 = f11;
                        this.mTotalLength = Math.max(i55, virtualChildAt4.getMeasuredWidth() + i55 + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + getNextLocationOffset(virtualChildAt4));
                    }
                    boolean z22 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == -1;
                    int i56 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i56;
                    i51 = Math.max(i51, measuredHeight2);
                    if (!z22) {
                        i56 = measuredHeight2;
                    }
                    int max3 = Math.max(i49, i56);
                    if (z18) {
                        i18 = -1;
                        if (((LinearLayout.LayoutParams) aVar3).height == -1) {
                            z10 = true;
                            if (z21 && (baseline = virtualChildAt4.getBaseline()) != i18) {
                                i19 = ((LinearLayout.LayoutParams) aVar3).gravity;
                                if (i19 < 0) {
                                    i19 = this.mGravity;
                                }
                                int i57 = (((i19 & 112) >> 4) & (-2)) >> 1;
                                iArr2[i57] = Math.max(iArr2[i57], baseline);
                                iArr[i57] = Math.max(iArr[i57], measuredHeight2 - baseline);
                            }
                            z18 = z10;
                            i49 = max3;
                            f11 = f10;
                        }
                    } else {
                        i18 = -1;
                    }
                    z10 = false;
                    if (z21) {
                        i19 = ((LinearLayout.LayoutParams) aVar3).gravity;
                        if (i19 < 0) {
                        }
                        int i572 = (((i19 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i572] = Math.max(iArr2[i572], baseline);
                        iArr[i572] = Math.max(iArr[i572], measuredHeight2 - baseline);
                    }
                    z18 = z10;
                    i49 = max3;
                    f11 = f10;
                }
                i52++;
                i47 = i16;
                virtualChildCount = i17;
            }
            i13 = i11;
            i14 = virtualChildCount;
            this.mTotalLength += getPaddingLeft() + getPaddingRight();
            max2 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i51 : Math.max(i51, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i15 = i49;
            i12 = i50;
        }
        if (z18 || mode2 == 1073741824) {
            i15 = max2;
        }
        setMeasuredDimension(resolveSizeAndState | (i12 & (-16777216)), View.resolveSizeAndState(Math.max(i15 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i13, i12 << 16));
        if (z19) {
            forceUniformHeight(i14, i10);
        }
    }

    public int measureNullChild(int i10) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x0323  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureVertical(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z10;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        View view;
        int max;
        boolean z11;
        int max2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i28 = this.mBaselineAlignedChildIndex;
        boolean z12 = this.mUseLargestChild;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        boolean z13 = false;
        boolean z14 = true;
        boolean z15 = false;
        while (true) {
            int i35 = 8;
            int i36 = i32;
            if (i34 < virtualChildCount) {
                View virtualChildAt = getVirtualChildAt(i34);
                if (virtualChildAt == null) {
                    this.mTotalLength += measureNullChild(i34);
                    i23 = virtualChildCount;
                    i24 = mode2;
                    i32 = i36;
                } else {
                    int i37 = i29;
                    if (virtualChildAt.getVisibility() == 8) {
                        i34 += getChildrenSkipCount(virtualChildAt, i34);
                        i23 = virtualChildCount;
                        i32 = i36;
                        i29 = i37;
                        i24 = mode2;
                    } else {
                        if (hasDividerBeforeChildAt(i34)) {
                            this.mTotalLength += this.mDividerHeight;
                        }
                        a aVar = (a) virtualChildAt.getLayoutParams();
                        float f11 = ((LinearLayout.LayoutParams) aVar).weight;
                        float f12 = f10 + f11;
                        if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) aVar).height == 0 && f11 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            int i38 = this.mTotalLength;
                            this.mTotalLength = Math.max(i38, ((LinearLayout.LayoutParams) aVar).topMargin + i38 + ((LinearLayout.LayoutParams) aVar).bottomMargin);
                            max = i31;
                            view = virtualChildAt;
                            i26 = i33;
                            i21 = i37;
                            i22 = i30;
                            z13 = true;
                            i23 = virtualChildCount;
                            i24 = mode2;
                            i25 = i36;
                            i27 = i34;
                        } else {
                            int i39 = i30;
                            if (((LinearLayout.LayoutParams) aVar).height != 0 || f11 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                i20 = Integer.MIN_VALUE;
                            } else {
                                ((LinearLayout.LayoutParams) aVar).height = -2;
                                i20 = 0;
                            }
                            i21 = i37;
                            int i40 = i20;
                            i22 = i39;
                            int i41 = i31;
                            i23 = virtualChildCount;
                            i24 = mode2;
                            i25 = i36;
                            i26 = i33;
                            i27 = i34;
                            measureChildBeforeLayout(virtualChildAt, i34, i10, 0, i11, f12 == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD ? this.mTotalLength : 0);
                            if (i40 != Integer.MIN_VALUE) {
                                ((LinearLayout.LayoutParams) aVar).height = i40;
                            }
                            int measuredHeight = virtualChildAt.getMeasuredHeight();
                            int i42 = this.mTotalLength;
                            view = virtualChildAt;
                            this.mTotalLength = Math.max(i42, i42 + measuredHeight + ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin + getNextLocationOffset(view));
                            max = z12 ? Math.max(measuredHeight, i41) : i41;
                        }
                        if (i28 >= 0 && i28 == i27 + 1) {
                            this.mBaselineChildTop = this.mTotalLength;
                        }
                        if (i27 < i28 && ((LinearLayout.LayoutParams) aVar).weight > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (mode == 1073741824 || ((LinearLayout.LayoutParams) aVar).width != -1) {
                            z11 = false;
                        } else {
                            z11 = true;
                            z15 = true;
                        }
                        int i43 = ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                        int measuredWidth = view.getMeasuredWidth() + i43;
                        int max3 = Math.max(i22, measuredWidth);
                        int combineMeasuredStates = View.combineMeasuredStates(i21, view.getMeasuredState());
                        z14 = z14 && ((LinearLayout.LayoutParams) aVar).width == -1;
                        if (((LinearLayout.LayoutParams) aVar).weight > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                            if (!z11) {
                                i43 = measuredWidth;
                            }
                            i32 = Math.max(i25, i43);
                            max2 = i26;
                        } else {
                            if (!z11) {
                                i43 = measuredWidth;
                            }
                            max2 = Math.max(i26, i43);
                            i32 = i25;
                        }
                        int childrenSkipCount = getChildrenSkipCount(view, i27) + i27;
                        i31 = max;
                        f10 = f12;
                        i33 = max2;
                        i29 = combineMeasuredStates;
                        i34 = childrenSkipCount;
                        i30 = max3;
                    }
                }
                i34++;
                mode2 = i24;
                virtualChildCount = i23;
            } else {
                int i44 = i29;
                int i45 = i31;
                int i46 = i33;
                int i47 = virtualChildCount;
                int i48 = mode2;
                int i49 = i30;
                if (this.mTotalLength > 0) {
                    i12 = i47;
                    if (hasDividerBeforeChildAt(i12)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i12 = i47;
                }
                if (z12 && (i48 == Integer.MIN_VALUE || i48 == 0)) {
                    this.mTotalLength = 0;
                    int i50 = 0;
                    while (i50 < i12) {
                        View virtualChildAt2 = getVirtualChildAt(i50);
                        if (virtualChildAt2 == null) {
                            this.mTotalLength += measureNullChild(i50);
                        } else if (virtualChildAt2.getVisibility() == i35) {
                            i50 += getChildrenSkipCount(virtualChildAt2, i50);
                        } else {
                            a aVar2 = (a) virtualChildAt2.getLayoutParams();
                            int i51 = this.mTotalLength;
                            this.mTotalLength = Math.max(i51, i51 + i45 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                        }
                        i50++;
                        i35 = 8;
                    }
                }
                int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
                this.mTotalLength = paddingTop;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i11, 0);
                int i52 = (16777215 & resolveSizeAndState) - this.mTotalLength;
                if (!z13 && (i52 == 0 || f10 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD)) {
                    i15 = Math.max(i46, i36);
                    if (z12 && i48 != 1073741824) {
                        for (int i53 = 0; i53 < i12; i53++) {
                            View virtualChildAt3 = getVirtualChildAt(i53);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) virtualChildAt3.getLayoutParams())).weight > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(i45, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                            }
                        }
                    }
                    i14 = i10;
                    i13 = i44;
                } else {
                    float f13 = this.mWeightSum;
                    if (f13 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                        f10 = f13;
                    }
                    this.mTotalLength = 0;
                    int i54 = i52;
                    int i55 = i46;
                    i13 = i44;
                    int i56 = 0;
                    while (i56 < i12) {
                        View virtualChildAt4 = getVirtualChildAt(i56);
                        if (virtualChildAt4.getVisibility() == 8) {
                            i16 = i54;
                        } else {
                            a aVar3 = (a) virtualChildAt4.getLayoutParams();
                            float f14 = ((LinearLayout.LayoutParams) aVar3).weight;
                            if (f14 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                int i57 = (int) ((i54 * f14) / f10);
                                float f15 = f10 - f14;
                                i16 = i54 - i57;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin, ((LinearLayout.LayoutParams) aVar3).width);
                                if (((LinearLayout.LayoutParams) aVar3).height == 0) {
                                    i19 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                                    if (i48 == 1073741824) {
                                        if (i57 <= 0) {
                                            i57 = 0;
                                        }
                                        virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i57, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
                                        i13 = View.combineMeasuredStates(i13, virtualChildAt4.getMeasuredState() & (-256));
                                        f10 = f15;
                                    }
                                } else {
                                    i19 = NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH;
                                }
                                int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i57;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i19));
                                i13 = View.combineMeasuredStates(i13, virtualChildAt4.getMeasuredState() & (-256));
                                f10 = f15;
                            } else {
                                i16 = i54;
                            }
                            int i58 = ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin;
                            int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i58;
                            i49 = Math.max(i49, measuredWidth2);
                            float f16 = f10;
                            if (mode != 1073741824) {
                                i17 = i13;
                                i18 = -1;
                                if (((LinearLayout.LayoutParams) aVar3).width == -1) {
                                    z10 = true;
                                    if (!z10) {
                                        i58 = measuredWidth2;
                                    }
                                    int max4 = Math.max(i55, i58);
                                    boolean z16 = !z14 && ((LinearLayout.LayoutParams) aVar3).width == i18;
                                    int i59 = this.mTotalLength;
                                    this.mTotalLength = Math.max(i59, virtualChildAt4.getMeasuredHeight() + i59 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + getNextLocationOffset(virtualChildAt4));
                                    z14 = z16;
                                    i13 = i17;
                                    i55 = max4;
                                    f10 = f16;
                                }
                            } else {
                                i17 = i13;
                                i18 = -1;
                            }
                            z10 = false;
                            if (!z10) {
                            }
                            int max42 = Math.max(i55, i58);
                            if (z14) {
                            }
                            int i592 = this.mTotalLength;
                            this.mTotalLength = Math.max(i592, virtualChildAt4.getMeasuredHeight() + i592 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + getNextLocationOffset(virtualChildAt4));
                            z14 = z16;
                            i13 = i17;
                            i55 = max42;
                            f10 = f16;
                        }
                        i56++;
                        i54 = i16;
                    }
                    i14 = i10;
                    this.mTotalLength += getPaddingTop() + getPaddingBottom();
                    i15 = i55;
                }
                if (z14 || mode == 1073741824) {
                    i15 = i49;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i15 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i14, i13), resolveSizeAndState);
                if (z15) {
                    forceUniformWidth(i12, i11);
                    return;
                }
                return;
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        if (this.mOrientation == 1) {
            layoutVertical(i10, i11, i12, i13);
        } else {
            layoutHorizontal(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.mOrientation == 1) {
            measureVertical(i10, i11);
        } else {
            measureHorizontal(i10, i11);
        }
    }

    public void setBaselineAligned(boolean z10) {
        this.mBaselineAligned = z10;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i10) {
        this.mDividerPadding = i10;
    }

    public void setGravity(int i10) {
        if (this.mGravity != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.mGravity = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & 8388615;
        int i12 = this.mGravity;
        if ((8388615 & i12) != i11) {
            this.mGravity = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z10) {
        this.mUseLargestChild = z10;
    }

    public void setOrientation(int i10) {
        if (this.mOrientation != i10) {
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.mGravity;
        if ((i12 & 112) != i11) {
            this.mGravity = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f10) {
        this.mWeightSum = Math.max(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, f10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public a generateDefaultLayoutParams() {
        int i10 = this.mOrientation;
        if (i10 == 0) {
            return new a(-2, -2);
        }
        if (i10 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = BadgeDrawable.TOP_START;
        int[] iArr = d.j.f5368i1;
        v0 v10 = v0.v(context, attributeSet, iArr, i10, 0);
        q0.b0.r0(this, context, iArr, attributeSet, v10.r(), i10, 0);
        int k10 = v10.k(d.j.f5378k1, -1);
        if (k10 >= 0) {
            setOrientation(k10);
        }
        int k11 = v10.k(d.j.f5373j1, -1);
        if (k11 >= 0) {
            setGravity(k11);
        }
        boolean a10 = v10.a(d.j.f5383l1, true);
        if (!a10) {
            setBaselineAligned(a10);
        }
        this.mWeightSum = v10.i(d.j.f5393n1, -1.0f);
        this.mBaselineAlignedChildIndex = v10.k(d.j.f5388m1, -1);
        this.mUseLargestChild = v10.a(d.j.f5408q1, false);
        setDividerDrawable(v10.g(d.j.f5398o1));
        this.mShowDividers = v10.k(d.j.f5413r1, 0);
        this.mDividerPadding = v10.f(d.j.f5403p1, 0);
        v10.w();
    }

    @Override // android.view.ViewGroup
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }
}
