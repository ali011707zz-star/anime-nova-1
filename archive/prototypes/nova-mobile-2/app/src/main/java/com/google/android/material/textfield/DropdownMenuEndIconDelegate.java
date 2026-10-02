package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import f.a;
import q0.b0;
import r0.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DropdownMenuEndIconDelegate extends EndIconDelegate {
    private static final int ANIMATION_FADE_IN_DURATION = 67;
    private static final int ANIMATION_FADE_OUT_DURATION = 50;
    private static final boolean IS_LOLLIPOP;
    private final TextInputLayout.AccessibilityDelegate accessibilityDelegate;
    private AccessibilityManager accessibilityManager;
    private final TextInputLayout.OnEditTextAttachedListener dropdownMenuOnEditTextAttachedListener;
    private long dropdownPopupActivatedAt;
    private boolean dropdownPopupDirty;

    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.OnEndIconChangedListener endIconChangedListener;
    private final TextWatcher exposedDropdownEndIconTextWatcher;
    private ValueAnimator fadeInAnim;
    private ValueAnimator fadeOutAnim;
    private StateListDrawable filledPopupBackground;
    private boolean isEndIconChecked;
    private final View.OnFocusChangeListener onFocusChangeListener;
    private MaterialShapeDrawable outlinedPopupBackground;

    static {
        IS_LOLLIPOP = Build.VERSION.SDK_INT >= 21;
    }

    public DropdownMenuEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.exposedDropdownEndIconTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                final AutoCompleteTextView castAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(DropdownMenuEndIconDelegate.this.textInputLayout.getEditText());
                if (DropdownMenuEndIconDelegate.this.accessibilityManager.isTouchExplorationEnabled() && DropdownMenuEndIconDelegate.isEditable(castAutoCompleteTextViewOrThrow) && !DropdownMenuEndIconDelegate.this.endIconView.hasFocus()) {
                    castAutoCompleteTextViewOrThrow.dismissDropDown();
                }
                castAutoCompleteTextViewOrThrow.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean isPopupShowing = castAutoCompleteTextViewOrThrow.isPopupShowing();
                        DropdownMenuEndIconDelegate.this.setEndIconChecked(isPopupShowing);
                        DropdownMenuEndIconDelegate.this.dropdownPopupDirty = isPopupShowing;
                    }
                });
            }
        };
        this.onFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z10) {
                DropdownMenuEndIconDelegate.this.textInputLayout.setEndIconActivated(z10);
                if (z10) {
                    return;
                }
                DropdownMenuEndIconDelegate.this.setEndIconChecked(false);
                DropdownMenuEndIconDelegate.this.dropdownPopupDirty = false;
            }
        };
        this.accessibilityDelegate = new TextInputLayout.AccessibilityDelegate(this.textInputLayout) { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.3
            @Override // com.google.android.material.textfield.TextInputLayout.AccessibilityDelegate, q0.a
            public void onInitializeAccessibilityNodeInfo(View view, c cVar) {
                super.onInitializeAccessibilityNodeInfo(view, cVar);
                if (!DropdownMenuEndIconDelegate.isEditable(DropdownMenuEndIconDelegate.this.textInputLayout.getEditText())) {
                    cVar.b0(Spinner.class.getName());
                }
                if (cVar.M()) {
                    cVar.m0(null);
                }
            }

            @Override // q0.a
            public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
                AutoCompleteTextView castAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(DropdownMenuEndIconDelegate.this.textInputLayout.getEditText());
                if (accessibilityEvent.getEventType() == 1 && DropdownMenuEndIconDelegate.this.accessibilityManager.isTouchExplorationEnabled() && !DropdownMenuEndIconDelegate.isEditable(DropdownMenuEndIconDelegate.this.textInputLayout.getEditText())) {
                    DropdownMenuEndIconDelegate.this.showHideDropdown(castAutoCompleteTextViewOrThrow);
                }
            }
        };
        this.dropdownMenuOnEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.4
            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public void onEditTextAttached(TextInputLayout textInputLayout2) {
                AutoCompleteTextView castAutoCompleteTextViewOrThrow = DropdownMenuEndIconDelegate.castAutoCompleteTextViewOrThrow(textInputLayout2.getEditText());
                DropdownMenuEndIconDelegate.this.setPopupBackground(castAutoCompleteTextViewOrThrow);
                DropdownMenuEndIconDelegate.this.addRippleEffect(castAutoCompleteTextViewOrThrow);
                DropdownMenuEndIconDelegate.this.setUpDropdownShowHideBehavior(castAutoCompleteTextViewOrThrow);
                castAutoCompleteTextViewOrThrow.setThreshold(0);
                castAutoCompleteTextViewOrThrow.removeTextChangedListener(DropdownMenuEndIconDelegate.this.exposedDropdownEndIconTextWatcher);
                castAutoCompleteTextViewOrThrow.addTextChangedListener(DropdownMenuEndIconDelegate.this.exposedDropdownEndIconTextWatcher);
                textInputLayout2.setEndIconCheckable(true);
                textInputLayout2.setErrorIconDrawable((Drawable) null);
                if (!DropdownMenuEndIconDelegate.isEditable(castAutoCompleteTextViewOrThrow)) {
                    b0.E0(DropdownMenuEndIconDelegate.this.endIconView, 2);
                }
                textInputLayout2.setTextInputAccessibilityDelegate(DropdownMenuEndIconDelegate.this.accessibilityDelegate);
                textInputLayout2.setEndIconVisible(true);
            }
        };
        this.endIconChangedListener = new TextInputLayout.OnEndIconChangedListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5
            @Override // com.google.android.material.textfield.TextInputLayout.OnEndIconChangedListener
            public void onEndIconChanged(TextInputLayout textInputLayout2, int i10) {
                final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout2.getEditText();
                if (autoCompleteTextView == null || i10 != 3) {
                    return;
                }
                autoCompleteTextView.post(new Runnable() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        autoCompleteTextView.removeTextChangedListener(DropdownMenuEndIconDelegate.this.exposedDropdownEndIconTextWatcher);
                    }
                });
                if (autoCompleteTextView.getOnFocusChangeListener() == DropdownMenuEndIconDelegate.this.onFocusChangeListener) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (DropdownMenuEndIconDelegate.IS_LOLLIPOP) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
        };
        this.dropdownPopupDirty = false;
        this.isEndIconChecked = false;
        this.dropdownPopupActivatedAt = RecyclerView.FOREVER_NS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRippleEffect(AutoCompleteTextView autoCompleteTextView) {
        if (isEditable(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
        MaterialShapeDrawable boxBackground = this.textInputLayout.getBoxBackground();
        int color = MaterialColors.getColor(autoCompleteTextView, R.attr.colorControlHighlight);
        int[][] iArr = {new int[]{android.R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            addRippleEffectOnOutlinedLayout(autoCompleteTextView, color, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            addRippleEffectOnFilledLayout(autoCompleteTextView, color, iArr, boxBackground);
        }
    }

    private void addRippleEffectOnFilledLayout(AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.textInputLayout.getBoxBackgroundColor();
        int[] iArr2 = {MaterialColors.layer(i10, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (IS_LOLLIPOP) {
            b0.x0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable2.setFillColor(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int J = b0.J(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int I = b0.I(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        b0.x0(autoCompleteTextView, layerDrawable);
        b0.H0(autoCompleteTextView, J, paddingTop, I, paddingBottom);
    }

    private void addRippleEffectOnOutlinedLayout(AutoCompleteTextView autoCompleteTextView, int i10, int[][] iArr, MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int color = MaterialColors.getColor(autoCompleteTextView, R.attr.colorSurface);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int layer = MaterialColors.layer(i10, color, 0.1f);
        materialShapeDrawable2.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
        if (IS_LOLLIPOP) {
            materialShapeDrawable2.setTint(color);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, color});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        b0.x0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AutoCompleteTextView castAutoCompleteTextViewOrThrow(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator getAlphaAnimator(int i10, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        ofFloat.setDuration(i10);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.10
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DropdownMenuEndIconDelegate.this.endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    private MaterialShapeDrawable getPopUpMaterialShapeDrawable(float f10, float f11, float f12, int i10) {
        ShapeAppearanceModel build = ShapeAppearanceModel.builder().setTopLeftCornerSize(f10).setTopRightCornerSize(f10).setBottomLeftCornerSize(f11).setBottomRightCornerSize(f11).build();
        MaterialShapeDrawable createWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(this.context, f12);
        createWithElevationOverlay.setShapeAppearanceModel(build);
        createWithElevationOverlay.setPadding(0, i10, 0, i10);
        return createWithElevationOverlay;
    }

    private void initAnimators() {
        this.fadeInAnim = getAlphaAnimator(67, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, 1.0f);
        ValueAnimator alphaAnimator = getAlphaAnimator(50, 1.0f, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        this.fadeOutAnim = alphaAnimator;
        alphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.endIconView.setChecked(dropdownMenuEndIconDelegate.isEndIconChecked);
                DropdownMenuEndIconDelegate.this.fadeInAnim.start();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDropdownPopupActive() {
        long currentTimeMillis = System.currentTimeMillis() - this.dropdownPopupActivatedAt;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isEditable(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEndIconChecked(boolean z10) {
        if (this.isEndIconChecked != z10) {
            this.isEndIconChecked = z10;
            this.fadeInAnim.cancel();
            this.fadeOutAnim.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPopupBackground(AutoCompleteTextView autoCompleteTextView) {
        if (IS_LOLLIPOP) {
            int boxBackgroundMode = this.textInputLayout.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.outlinedPopupBackground);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.filledPopupBackground);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void setUpDropdownShowHideBehavior(final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (DropdownMenuEndIconDelegate.this.isDropdownPopupActive()) {
                        DropdownMenuEndIconDelegate.this.dropdownPopupDirty = false;
                    }
                    DropdownMenuEndIconDelegate.this.showHideDropdown(autoCompleteTextView);
                }
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(this.onFocusChangeListener);
        if (IS_LOLLIPOP) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.8
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public void onDismiss() {
                    DropdownMenuEndIconDelegate.this.dropdownPopupDirty = true;
                    DropdownMenuEndIconDelegate.this.dropdownPopupActivatedAt = System.currentTimeMillis();
                    DropdownMenuEndIconDelegate.this.setEndIconChecked(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showHideDropdown(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (isDropdownPopupActive()) {
            this.dropdownPopupDirty = false;
        }
        if (!this.dropdownPopupDirty) {
            if (IS_LOLLIPOP) {
                setEndIconChecked(!this.isEndIconChecked);
            } else {
                this.isEndIconChecked = !this.isEndIconChecked;
                this.endIconView.toggle();
            }
            if (this.isEndIconChecked) {
                autoCompleteTextView.requestFocus();
                autoCompleteTextView.showDropDown();
                return;
            } else {
                autoCompleteTextView.dismissDropDown();
                return;
            }
        }
        this.dropdownPopupDirty = false;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void initialize() {
        float dimensionPixelOffset = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.context.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable popUpMaterialShapeDrawable = getPopUpMaterialShapeDrawable(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable popUpMaterialShapeDrawable2 = getPopUpMaterialShapeDrawable(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.outlinedPopupBackground = popUpMaterialShapeDrawable;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.filledPopupBackground = stateListDrawable;
        stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, popUpMaterialShapeDrawable);
        this.filledPopupBackground.addState(new int[0], popUpMaterialShapeDrawable2);
        this.textInputLayout.setEndIconDrawable(a.b(this.context, IS_LOLLIPOP ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.textInputLayout;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DropdownMenuEndIconDelegate.this.showHideDropdown((AutoCompleteTextView) DropdownMenuEndIconDelegate.this.textInputLayout.getEditText());
            }
        });
        this.textInputLayout.addOnEditTextAttachedListener(this.dropdownMenuOnEditTextAttachedListener);
        this.textInputLayout.addOnEndIconChangedListener(this.endIconChangedListener);
        initAnimators();
        this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public boolean isBoxBackgroundModeSupported(int i10) {
        return i10 != 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public boolean shouldTintIconOnError() {
        return true;
    }
}
