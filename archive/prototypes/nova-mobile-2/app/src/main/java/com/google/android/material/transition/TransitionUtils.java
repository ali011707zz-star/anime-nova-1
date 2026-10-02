package com.google.android.material.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import s0.b;
import x1.g;
import x1.i;
import x1.o;
import x1.s;

/* loaded from: classes.dex */
class TransitionUtils {
    private static final String EASING_TYPE_CUBIC_BEZIER = "cubic-bezier";
    private static final String EASING_TYPE_FORMAT_END = ")";
    private static final String EASING_TYPE_FORMAT_START = "(";
    private static final String EASING_TYPE_PATH = "path";
    public static final int NO_ATTR_RES_ID = 0;
    public static final int NO_DURATION = -1;
    private static final int PATH_TYPE_ARC = 1;
    private static final int PATH_TYPE_LINEAR = 0;
    private static final RectF transformAlphaRectF = new RectF();

    /* loaded from: classes.dex */
    public interface CanvasOperation {
        void run(Canvas canvas);
    }

    /* loaded from: classes.dex */
    public interface CornerSizeBinaryOperator {
        CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2);
    }

    private TransitionUtils() {
    }

    public static float calculateArea(RectF rectF) {
        return rectF.width() * rectF.height();
    }

    public static ShapeAppearanceModel convertToRelativeCornerSizes(ShapeAppearanceModel shapeAppearanceModel, final RectF rectF) {
        return shapeAppearanceModel.withTransformedCornerSizes(new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.1
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public CornerSize apply(CornerSize cornerSize) {
                return cornerSize instanceof RelativeCornerSize ? cornerSize : new RelativeCornerSize(cornerSize.getCornerSize(rectF) / rectF.height());
            }
        });
    }

    public static Shader createColorShader(int i10) {
        return new LinearGradient(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, i10, i10, Shader.TileMode.CLAMP);
    }

    public static <T> T defaultIfNull(T t10, T t11) {
        return t10 != null ? t10 : t11;
    }

    public static View findAncestorById(View view, int i10) {
        String resourceName = view.getResources().getResourceName(i10);
        while (view != null) {
            if (view.getId() != i10) {
                Object parent = view.getParent();
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                return view;
            }
        }
        throw new IllegalArgumentException(resourceName + " is not a valid ancestor");
    }

    public static View findDescendantOrAncestorById(View view, int i10) {
        View findViewById = view.findViewById(i10);
        return findViewById != null ? findViewById : findAncestorById(view, i10);
    }

    private static float getControlPoint(String[] strArr, int i10) {
        float parseFloat = Float.parseFloat(strArr[i10]);
        if (parseFloat >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && parseFloat <= 1.0f) {
            return parseFloat;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
    }

    private static String getEasingContent(String str, String str2) {
        return str.substring(str2.length() + 1, str.length() - 1);
    }

    public static RectF getLocationOnScreen(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r1, view.getHeight() + r0);
    }

    public static RectF getRelativeBounds(View view) {
        return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public static Rect getRelativeBoundsRect(View view) {
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    private static boolean isEasingType(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(EASING_TYPE_FORMAT_START);
        return str.startsWith(sb2.toString()) && str.endsWith(EASING_TYPE_FORMAT_END);
    }

    private static boolean isShapeAppearanceSignificant(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
        return (shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(rectF) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && shapeAppearanceModel.getTopRightCornerSize().getCornerSize(rectF) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(rectF) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(rectF) == StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) ? false : true;
    }

    public static float lerp(float f10, float f11, float f12) {
        return f10 + (f12 * (f11 - f10));
    }

    public static float lerp(float f10, float f11, float f12, float f13, float f14) {
        return lerp(f10, f11, f12, f13, f14, false);
    }

    public static void maybeAddTransition(s sVar, o oVar) {
        if (oVar != null) {
            sVar.f(oVar);
        }
    }

    public static boolean maybeApplyThemeDuration(o oVar, Context context, int i10) {
        int resolveInteger;
        if (i10 == 0 || oVar.getDuration() != -1 || (resolveInteger = MaterialAttributes.resolveInteger(context, i10, -1)) == -1) {
            return false;
        }
        oVar.setDuration(resolveInteger);
        return true;
    }

    public static boolean maybeApplyThemeInterpolator(o oVar, Context context, int i10, TimeInterpolator timeInterpolator) {
        if (i10 == 0 || oVar.getInterpolator() != null) {
            return false;
        }
        oVar.setInterpolator(resolveThemeInterpolator(context, i10, timeInterpolator));
        return true;
    }

    public static boolean maybeApplyThemePath(o oVar, Context context, int i10) {
        g resolveThemePath;
        if (i10 == 0 || (resolveThemePath = resolveThemePath(context, i10)) == null) {
            return false;
        }
        oVar.setPathMotion(resolveThemePath);
        return true;
    }

    public static void maybeRemoveTransition(s sVar, o oVar) {
        if (oVar != null) {
            sVar.o(oVar);
        }
    }

    public static TimeInterpolator resolveThemeInterpolator(Context context, int i10, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type == 3) {
            String valueOf = String.valueOf(typedValue.string);
            if (isEasingType(valueOf, EASING_TYPE_CUBIC_BEZIER)) {
                String[] split = getEasingContent(valueOf, EASING_TYPE_CUBIC_BEZIER).split(",");
                if (split.length == 4) {
                    return b.a(getControlPoint(split, 0), getControlPoint(split, 1), getControlPoint(split, 2), getControlPoint(split, 3));
                }
                throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
            }
            if (isEasingType(valueOf, "path")) {
                return b.b(h0.g.e(getEasingContent(valueOf, "path")));
            }
            throw new IllegalArgumentException("Invalid motion easing type: " + valueOf);
        }
        throw new IllegalArgumentException("Motion easing theme attribute must be a string");
    }

    public static g resolveThemePath(Context context, int i10) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i10, typedValue, true)) {
            return null;
        }
        int i11 = typedValue.type;
        if (i11 != 16) {
            if (i11 == 3) {
                return new i(h0.g.e(String.valueOf(typedValue.string)));
            }
            throw new IllegalArgumentException("Motion path theme attribute must either be an enum value or path data string");
        }
        int i12 = typedValue.data;
        if (i12 == 0) {
            return null;
        }
        if (i12 == 1) {
            return new MaterialArcMotion();
        }
        throw new IllegalArgumentException("Invalid motion path type: " + i12);
    }

    private static int saveLayerAlphaCompat(Canvas canvas, Rect rect, int i10) {
        RectF rectF = transformAlphaRectF;
        rectF.set(rect);
        if (Build.VERSION.SDK_INT >= 21) {
            return canvas.saveLayerAlpha(rectF, i10);
        }
        return canvas.saveLayerAlpha(rectF.left, rectF.top, rectF.right, rectF.bottom, i10, 31);
    }

    public static void transform(Canvas canvas, Rect rect, float f10, float f11, float f12, int i10, CanvasOperation canvasOperation) {
        if (i10 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(f10, f11);
        canvas.scale(f12, f12);
        if (i10 < 255) {
            saveLayerAlphaCompat(canvas, rect, i10);
        }
        canvasOperation.run(canvas);
        canvas.restoreToCount(save);
    }

    public static ShapeAppearanceModel transformCornerSizes(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, CornerSizeBinaryOperator cornerSizeBinaryOperator) {
        return (isShapeAppearanceSignificant(shapeAppearanceModel, rectF) ? shapeAppearanceModel : shapeAppearanceModel2).toBuilder().setTopLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel2.getTopLeftCornerSize())).setTopRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel2.getTopRightCornerSize())).setBottomLeftCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel2.getBottomLeftCornerSize())).setBottomRightCornerSize(cornerSizeBinaryOperator.apply(shapeAppearanceModel.getBottomRightCornerSize(), shapeAppearanceModel2.getBottomRightCornerSize())).build();
    }

    public static float lerp(float f10, float f11, float f12, float f13, float f14, boolean z10) {
        if (!z10 || (f14 >= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD && f14 <= 1.0f)) {
            return f14 < f12 ? f10 : f14 > f13 ? f11 : lerp(f10, f11, (f14 - f12) / (f13 - f12));
        }
        return lerp(f10, f11, f14);
    }

    public static int lerp(int i10, int i11, float f10, float f11, float f12) {
        return f12 < f10 ? i10 : f12 > f11 ? i11 : (int) lerp(i10, i11, (f12 - f10) / (f11 - f10));
    }

    public static ShapeAppearanceModel lerp(ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, final RectF rectF, final RectF rectF2, final float f10, final float f11, final float f12) {
        return f12 < f10 ? shapeAppearanceModel : f12 > f11 ? shapeAppearanceModel2 : transformCornerSizes(shapeAppearanceModel, shapeAppearanceModel2, rectF, new CornerSizeBinaryOperator() { // from class: com.google.android.material.transition.TransitionUtils.2
            @Override // com.google.android.material.transition.TransitionUtils.CornerSizeBinaryOperator
            public CornerSize apply(CornerSize cornerSize, CornerSize cornerSize2) {
                return new AbsoluteCornerSize(TransitionUtils.lerp(cornerSize.getCornerSize(rectF), cornerSize2.getCornerSize(rectF2), f10, f11, f12));
            }
        });
    }
}
