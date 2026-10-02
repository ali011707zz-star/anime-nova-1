package x1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* compiled from: TransitionUtils.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f15821a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f15822b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f15823c;

    static {
        int i10 = Build.VERSION.SDK_INT;
        f15821a = i10 >= 19;
        f15822b = i10 >= 18;
        f15823c = i10 >= 28;
    }

    public static View a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        e0.i(view, matrix);
        e0.j(viewGroup, matrix);
        RectF rectF = new RectF(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap b10 = b(view, matrix, rectF, viewGroup);
        if (b10 != null) {
            imageView.setImageBitmap(b10);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH), View.MeasureSpec.makeMeasureSpec(round4 - round2, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap b(View view, Matrix matrix, RectF rectF, ViewGroup viewGroup) {
        boolean z10;
        boolean z11;
        boolean z12;
        ViewGroup viewGroup2;
        int i10;
        int round;
        int round2;
        if (f15821a) {
            z10 = !view.isAttachedToWindow();
            if (viewGroup != null) {
                z11 = viewGroup.isAttachedToWindow();
                z12 = f15822b;
                Bitmap bitmap = null;
                if (z12 || !z10) {
                    viewGroup2 = null;
                    i10 = 0;
                } else {
                    if (!z11) {
                        return null;
                    }
                    viewGroup2 = (ViewGroup) view.getParent();
                    i10 = viewGroup2.indexOfChild(view);
                    viewGroup.getOverlay().add(view);
                }
                round = Math.round(rectF.width());
                round2 = Math.round(rectF.height());
                if (round > 0 && round2 > 0) {
                    float min = Math.min(1.0f, 1048576.0f / (round * round2));
                    int round3 = Math.round(round * min);
                    int round4 = Math.round(round2 * min);
                    matrix.postTranslate(-rectF.left, -rectF.top);
                    matrix.postScale(min, min);
                    if (!f15823c) {
                        Picture picture = new Picture();
                        Canvas beginRecording = picture.beginRecording(round3, round4);
                        beginRecording.concat(matrix);
                        view.draw(beginRecording);
                        picture.endRecording();
                        bitmap = Bitmap.createBitmap(picture);
                    } else {
                        bitmap = Bitmap.createBitmap(round3, round4, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmap);
                        canvas.concat(matrix);
                        view.draw(canvas);
                    }
                }
                if (z12 && z10) {
                    viewGroup.getOverlay().remove(view);
                    viewGroup2.addView(view, i10);
                }
                return bitmap;
            }
        } else {
            z10 = false;
        }
        z11 = false;
        z12 = f15822b;
        Bitmap bitmap2 = null;
        if (z12) {
        }
        viewGroup2 = null;
        i10 = 0;
        round = Math.round(rectF.width());
        round2 = Math.round(rectF.height());
        if (round > 0) {
            float min2 = Math.min(1.0f, 1048576.0f / (round * round2));
            int round32 = Math.round(round * min2);
            int round42 = Math.round(round2 * min2);
            matrix.postTranslate(-rectF.left, -rectF.top);
            matrix.postScale(min2, min2);
            if (!f15823c) {
            }
        }
        if (z12) {
            viewGroup.getOverlay().remove(view);
            viewGroup2.addView(view, i10);
        }
        return bitmap2;
    }

    public static Animator c(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }
}
