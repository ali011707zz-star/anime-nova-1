package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
import p0.e;
import q0.a;
import q0.b0;
import r0.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    private void gainFocus(int i10, Rect rect) {
        if (i10 == 33) {
            setSelection(getAdapter().lastPositionInMonth());
        } else if (i10 == 130) {
            setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i10, rect);
        }
    }

    private static int horizontalMidPoint(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(Long l10, Long l11, Long l12, Long l13) {
        return l10 == null || l11 == null || l12 == null || l13 == null || l12.longValue() > l11.longValue() || l13.longValue() < l10.longValue();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int dayToPosition;
        int horizontalMidPoint;
        int dayToPosition2;
        int horizontalMidPoint2;
        int width;
        int i10;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        MonthAdapter adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.dateSelector;
        CalendarStyle calendarStyle = adapter.calendarStyle;
        Long item = adapter.getItem(adapter.firstPositionInMonth());
        Long item2 = adapter.getItem(adapter.lastPositionInMonth());
        for (e<Long, Long> eVar : dateSelector.getSelectedRanges()) {
            Long l10 = eVar.f11990a;
            if (l10 != null) {
                if (eVar.f11991b != null) {
                    long longValue = l10.longValue();
                    long longValue2 = eVar.f11991b.longValue();
                    if (!skipMonth(item, item2, Long.valueOf(longValue), Long.valueOf(longValue2))) {
                        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                        if (longValue < item.longValue()) {
                            dayToPosition = adapter.firstPositionInMonth();
                            if (adapter.isFirstInRow(dayToPosition)) {
                                horizontalMidPoint = 0;
                            } else if (!isLayoutRtl) {
                                horizontalMidPoint = materialCalendarGridView.getChildAt(dayToPosition - 1).getRight();
                            } else {
                                horizontalMidPoint = materialCalendarGridView.getChildAt(dayToPosition - 1).getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue);
                            dayToPosition = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint = horizontalMidPoint(materialCalendarGridView.getChildAt(dayToPosition));
                        }
                        if (longValue2 > item2.longValue()) {
                            dayToPosition2 = Math.min(adapter.lastPositionInMonth(), getChildCount() - 1);
                            if (adapter.isLastInRow(dayToPosition2)) {
                                horizontalMidPoint2 = getWidth();
                            } else if (!isLayoutRtl) {
                                horizontalMidPoint2 = materialCalendarGridView.getChildAt(dayToPosition2).getRight();
                            } else {
                                horizontalMidPoint2 = materialCalendarGridView.getChildAt(dayToPosition2).getLeft();
                            }
                        } else {
                            materialCalendarGridView.dayCompute.setTimeInMillis(longValue2);
                            dayToPosition2 = adapter.dayToPosition(materialCalendarGridView.dayCompute.get(5));
                            horizontalMidPoint2 = horizontalMidPoint(materialCalendarGridView.getChildAt(dayToPosition2));
                        }
                        int itemId = (int) adapter.getItemId(dayToPosition);
                        int itemId2 = (int) adapter.getItemId(dayToPosition2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAt = materialCalendarGridView.getChildAt(numColumns);
                            int top = childAt.getTop() + calendarStyle.day.getTopInset();
                            int bottom = childAt.getBottom() - calendarStyle.day.getBottomInset();
                            if (!isLayoutRtl) {
                                i10 = numColumns > dayToPosition ? 0 : horizontalMidPoint;
                                width = dayToPosition2 > numColumns2 ? getWidth() : horizontalMidPoint2;
                            } else {
                                int i11 = dayToPosition2 > numColumns2 ? 0 : horizontalMidPoint2;
                                width = numColumns > dayToPosition ? getWidth() : horizontalMidPoint;
                                i10 = i11;
                            }
                            canvas.drawRect(i10, top, width, bottom, calendarStyle.rangeFill);
                            itemId++;
                            materialCalendarGridView = this;
                            adapter = adapter;
                        }
                    }
                }
            }
            materialCalendarGridView = this;
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z10, int i10, Rect rect) {
        if (z10) {
            gainFocus(i10, rect);
        } else {
            super.onFocusChanged(false, i10, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        if (!super.onKeyDown(i10, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().firstPositionInMonth()) {
            return true;
        }
        if (19 != i10) {
            return false;
        }
        setSelection(getAdapter().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.nestedScrollable) {
            super.onMeasure(i10, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
            getLayoutParams().height = getMeasuredHeight();
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i10) {
        if (i10 < getAdapter().firstPositionInMonth()) {
            super.setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.setSelection(i10);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof MonthAdapter) {
            super.setAdapter(listAdapter);
            return;
        }
        throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        b0.t0(this, new a() { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            @Override // q0.a
            public void onInitializeAccessibilityNodeInfo(View view, c cVar) {
                super.onInitializeAccessibilityNodeInfo(view, cVar);
                cVar.d0(null);
            }
        });
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public ListAdapter getAdapter2() {
        return (MonthAdapter) super.getAdapter();
    }
}
