package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import com.google.android.material.R;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.dialog.MaterialDialogs;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes.dex */
public class MaterialStyledDatePickerDialog extends DatePickerDialog {
    private static final int DEF_STYLE_ATTR = 16843612;
    private static final int DEF_STYLE_RES = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;
    private final Drawable background;
    private final Rect backgroundInsets;

    public MaterialStyledDatePickerDialog(Context context) {
        this(context, 0);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.background);
        getWindow().getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(this, this.backgroundInsets));
    }

    public MaterialStyledDatePickerDialog(Context context, int i10) {
        this(context, i10, null, -1, -1, -1);
    }

    public MaterialStyledDatePickerDialog(Context context, DatePickerDialog.OnDateSetListener onDateSetListener, int i10, int i11, int i12) {
        this(context, 0, onDateSetListener, i10, i11, i12);
    }

    public MaterialStyledDatePickerDialog(Context context, int i10, DatePickerDialog.OnDateSetListener onDateSetListener, int i11, int i12, int i13) {
        super(context, i10, onDateSetListener, i11, i12, i13);
        Context context2 = getContext();
        int resolveOrThrow = MaterialAttributes.resolveOrThrow(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i14 = DEF_STYLE_RES;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, 16843612, i14);
        if (Build.VERSION.SDK_INT >= 21) {
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(resolveOrThrow));
        } else {
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
        }
        Rect dialogBackgroundInsets = MaterialDialogs.getDialogBackgroundInsets(context2, 16843612, i14);
        this.backgroundInsets = dialogBackgroundInsets;
        this.background = MaterialDialogs.insetDrawable(materialShapeDrawable, dialogBackgroundInsets);
    }
}
