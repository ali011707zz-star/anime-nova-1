package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collection;
import p0.e;

/* loaded from: classes.dex */
public interface DateSelector<S> extends Parcelable {
    int getDefaultThemeResId(Context context);

    int getDefaultTitleResId();

    Collection<Long> getSelectedDays();

    Collection<e<Long, Long>> getSelectedRanges();

    S getSelection();

    String getSelectionDisplayString(Context context);

    boolean isSelectionComplete();

    View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, OnSelectionChangedListener<S> onSelectionChangedListener);

    void select(long j10);

    void setSelection(S s10);
}
