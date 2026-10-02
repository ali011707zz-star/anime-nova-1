package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.anslayer.R;
import com.anslayer.widget.RightAlignedHorizontalScrollView;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* compiled from: ContentRatingBottomSheetBinding.java */
/* loaded from: classes.dex */
public final class m0 implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8528a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f8529b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f8530c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8531d;

    /* renamed from: e, reason: collision with root package name */
    public final View f8532e;

    /* renamed from: f, reason: collision with root package name */
    public final Guideline f8533f;

    /* renamed from: g, reason: collision with root package name */
    public final RightAlignedHorizontalScrollView f8534g;

    /* renamed from: h, reason: collision with root package name */
    public final Button f8535h;

    /* renamed from: i, reason: collision with root package name */
    public final Button f8536i;

    /* renamed from: j, reason: collision with root package name */
    public final Button f8537j;

    /* renamed from: k, reason: collision with root package name */
    public final Button f8538k;

    /* renamed from: l, reason: collision with root package name */
    public final TextView f8539l;

    /* renamed from: m, reason: collision with root package name */
    public final MaterialButtonToggleGroup f8540m;

    /* renamed from: n, reason: collision with root package name */
    public final TextView f8541n;

    public m0(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, View view, Guideline guideline, RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView, Button button, Button button2, Button button3, Button button4, TextView textView4, MaterialButtonToggleGroup materialButtonToggleGroup, TextView textView5) {
        this.f8528a = constraintLayout;
        this.f8529b = textView;
        this.f8530c = textView2;
        this.f8531d = textView3;
        this.f8532e = view;
        this.f8533f = guideline;
        this.f8534g = rightAlignedHorizontalScrollView;
        this.f8535h = button;
        this.f8536i = button2;
        this.f8537j = button3;
        this.f8538k = button4;
        this.f8539l = textView4;
        this.f8540m = materialButtonToggleGroup;
        this.f8541n = textView5;
    }

    public static m0 a(View view) {
        int i10 = R.id.content_rating_level;
        TextView textView = (TextView) a2.b.a(view, R.id.content_rating_level);
        if (textView != null) {
            i10 = R.id.content_rating_question;
            TextView textView2 = (TextView) a2.b.a(view, R.id.content_rating_question);
            if (textView2 != null) {
                i10 = R.id.content_rating_type;
                TextView textView3 = (TextView) a2.b.a(view, R.id.content_rating_type);
                if (textView3 != null) {
                    i10 = R.id.divider;
                    View a10 = a2.b.a(view, R.id.divider);
                    if (a10 != null) {
                        i10 = R.id.guideline;
                        Guideline guideline = (Guideline) a2.b.a(view, R.id.guideline);
                        if (guideline != null) {
                            i10 = R.id.horizontal_scroll;
                            RightAlignedHorizontalScrollView rightAlignedHorizontalScrollView = (RightAlignedHorizontalScrollView) a2.b.a(view, R.id.horizontal_scroll);
                            if (rightAlignedHorizontalScrollView != null) {
                                i10 = R.id.mild_button;
                                Button button = (Button) a2.b.a(view, R.id.mild_button);
                                if (button != null) {
                                    i10 = R.id.moderate_button;
                                    Button button2 = (Button) a2.b.a(view, R.id.moderate_button);
                                    if (button2 != null) {
                                        i10 = R.id.none_button;
                                        Button button3 = (Button) a2.b.a(view, R.id.none_button);
                                        if (button3 != null) {
                                            i10 = R.id.severe_button;
                                            Button button4 = (Button) a2.b.a(view, R.id.severe_button);
                                            if (button4 != null) {
                                                i10 = R.id.severity_color;
                                                TextView textView4 = (TextView) a2.b.a(view, R.id.severity_color);
                                                if (textView4 != null) {
                                                    i10 = R.id.toggle_vote_button;
                                                    MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) a2.b.a(view, R.id.toggle_vote_button);
                                                    if (materialButtonToggleGroup != null) {
                                                        i10 = R.id.votes_count;
                                                        TextView textView5 = (TextView) a2.b.a(view, R.id.votes_count);
                                                        if (textView5 != null) {
                                                            return new m0((ConstraintLayout) view, textView, textView2, textView3, a10, guideline, rightAlignedHorizontalScrollView, button, button2, button3, button4, textView4, materialButtonToggleGroup, textView5);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.content_rating_bottom_sheet, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8528a;
    }
}
