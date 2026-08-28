package androidx.preference;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.d;
import androidx.preference.DialogPreference;

/* compiled from: PreferenceDialogFragmentCompat.java */
/* loaded from: classes.dex */
public abstract class b extends androidx.fragment.app.d implements DialogInterface.OnClickListener {

    /* renamed from: f, reason: collision with root package name */
    public DialogPreference f2628f;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f2629g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f2630h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f2631i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f2632j;

    /* renamed from: k, reason: collision with root package name */
    public int f2633k;

    /* renamed from: l, reason: collision with root package name */
    public BitmapDrawable f2634l;

    /* renamed from: m, reason: collision with root package name */
    public int f2635m;

    public DialogPreference E() {
        if (this.f2628f == null) {
            this.f2628f = (DialogPreference) ((DialogPreference.a) getTargetFragment()).i(getArguments().getString("key"));
        }
        return this.f2628f;
    }

    public boolean F() {
        return false;
    }

    public void G(View view) {
        View findViewById = view.findViewById(R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.f2632j;
            int i10 = 8;
            if (!TextUtils.isEmpty(charSequence)) {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i10 = 0;
            }
            if (findViewById.getVisibility() != i10) {
                findViewById.setVisibility(i10);
            }
        }
    }

    public View H(Context context) {
        int i10 = this.f2633k;
        if (i10 == 0) {
            return null;
        }
        return getLayoutInflater().inflate(i10, (ViewGroup) null);
    }

    public abstract void I(boolean z10);

    public void J(d.a aVar) {
    }

    public final void K(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i10) {
        this.f2635m = i10;
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        androidx.savedstate.c targetFragment = getTargetFragment();
        if (targetFragment instanceof DialogPreference.a) {
            DialogPreference.a aVar = (DialogPreference.a) targetFragment;
            String string = getArguments().getString("key");
            if (bundle == null) {
                DialogPreference dialogPreference = (DialogPreference) aVar.i(string);
                this.f2628f = dialogPreference;
                this.f2629g = dialogPreference.K0();
                this.f2630h = this.f2628f.M0();
                this.f2631i = this.f2628f.L0();
                this.f2632j = this.f2628f.J0();
                this.f2633k = this.f2628f.I0();
                Drawable H0 = this.f2628f.H0();
                if (H0 != null && !(H0 instanceof BitmapDrawable)) {
                    Bitmap createBitmap = Bitmap.createBitmap(H0.getIntrinsicWidth(), H0.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    H0.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    H0.draw(canvas);
                    this.f2634l = new BitmapDrawable(getResources(), createBitmap);
                    return;
                }
                this.f2634l = (BitmapDrawable) H0;
                return;
            }
            this.f2629g = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f2630h = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f2631i = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f2632j = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f2633k = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f2634l = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        throw new IllegalStateException("Target fragment must implement TargetFragment interface");
    }

    @Override // androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        androidx.fragment.app.e activity = getActivity();
        this.f2635m = -2;
        d.a negativeButton = new d.a(activity).setTitle(this.f2629g).setIcon(this.f2634l).setPositiveButton(this.f2630h, this).setNegativeButton(this.f2631i, this);
        View H = H(activity);
        if (H != null) {
            G(H);
            negativeButton.setView(H);
        } else {
            negativeButton.setMessage(this.f2632j);
        }
        J(negativeButton);
        androidx.appcompat.app.d create = negativeButton.create();
        if (F()) {
            K(create);
        }
        return create;
    }

    @Override // androidx.fragment.app.d, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        I(this.f2635m == -1);
    }

    @Override // androidx.fragment.app.d, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f2629g);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f2630h);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f2631i);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f2632j);
        bundle.putInt("PreferenceDialogFragment.layout", this.f2633k);
        BitmapDrawable bitmapDrawable = this.f2634l;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
