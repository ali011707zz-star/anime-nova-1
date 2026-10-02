package a7;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreferenceCompat;
import com.anslayer.R;
import com.anslayer.ui.contribution.TopContributorsActivity;
import com.anslayer.ui.setting.AboutActivity;
import com.anslayer.ui.setting.DisclaimerActivity;
import com.anslayer.ui.setting.WordsBlockingActivity;
import com.anslayer.widget.preference.IntListPreference;
import okhttp3.internal.cache.DiskLruCache;
import org.apache.http.protocol.HTTP;
import vb.p;

/* compiled from: SettingsGeneralFragment.kt */
/* loaded from: classes.dex */
public final class i extends a7.h {

    /* renamed from: p, reason: collision with root package name */
    public final vb.e f485p = vb.f.a(j.f497f);

    /* renamed from: q, reason: collision with root package name */
    public final vb.e f486q = vb.f.a(new a());

    /* compiled from: SettingsGeneralFragment.kt */
    /* loaded from: classes.dex */
    public static final class a extends jc.m implements ic.a<w4.e> {
        public a() {
            super(0);
        }

        @Override // ic.a
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final w4.e invoke() {
            return i.this.X().N().get();
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class b implements Preference.d {
        public b() {
        }

        @Override // androidx.preference.Preference.d
        public final boolean a(Preference preference, Object obj) {
            androidx.fragment.app.e activity;
            if (i.this.X().k0().get() == f4.c.LIGHT || (activity = i.this.getActivity()) == null) {
                return true;
            }
            activity.recreate();
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class c implements Preference.d {
        public c() {
        }

        @Override // androidx.preference.Preference.d
        public final boolean a(Preference preference, Object obj) {
            androidx.fragment.app.e activity = i.this.getActivity();
            if (activity == null) {
                return true;
            }
            activity.recreate();
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class d implements Preference.e {
        public d() {
        }

        @Override // androidx.preference.Preference.e
        public final boolean a(Preference preference) {
            i.this.startActivity(new Intent(i.this.requireActivity(), (Class<?>) WordsBlockingActivity.class));
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class e implements Preference.e {
        public e() {
        }

        @Override // androidx.preference.Preference.e
        public final boolean a(Preference preference) {
            i.this.startActivity(new Intent(i.this.requireActivity(), (Class<?>) TopContributorsActivity.class));
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class f implements Preference.e {
        public f() {
        }

        @Override // androidx.preference.Preference.e
        public final boolean a(Preference preference) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(HTTP.PLAIN_TEXT_TYPE);
            intent.putExtra("android.intent.extra.TEXT", "AnimeSlayer | انمي سلاير\nhttp://app-mo.app");
            i.this.startActivity(Intent.createChooser(intent, "AnimeSlayer"));
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class g implements Preference.e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Preference f493a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f494b;

        public g(Preference preference, i iVar) {
            this.f493a = preference;
            this.f494b = iVar;
        }

        @Override // androidx.preference.Preference.e
        public final boolean a(Preference preference) {
            this.f494b.startActivity(new Intent(this.f493a.i(), (Class<?>) DisclaimerActivity.class));
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* loaded from: classes.dex */
    public static final class h implements Preference.e {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Preference f495a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ i f496b;

        public h(Preference preference, i iVar) {
            this.f495a = preference;
            this.f496b = iVar;
        }

        @Override // androidx.preference.Preference.e
        public final boolean a(Preference preference) {
            this.f496b.startActivity(new Intent(this.f495a.i(), (Class<?>) AboutActivity.class));
            return true;
        }
    }

    /* compiled from: PreferenceDSL.kt */
    /* renamed from: a7.i$i, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0014i implements Preference.d {
        @Override // androidx.preference.Preference.d
        public final boolean a(Preference preference, Object obj) {
            if (obj != null) {
                if (((Boolean) obj).booleanValue()) {
                    c4.a.f3668a.a();
                    return true;
                }
                c4.a.f3668a.b();
                return true;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class j extends jc.m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final j f497f = new j();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public j() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    @Override // a7.h
    public PreferenceScreen W(PreferenceScreen preferenceScreen) {
        jc.l.f(preferenceScreen, "screen");
        f7.a.e(preferenceScreen, R.string.title_activity_settings);
        PreferenceCategory preferenceCategory = new PreferenceCategory(preferenceScreen.i());
        preferenceCategory.p0(false);
        preferenceScreen.H0(preferenceCategory);
        f7.a.e(preferenceCategory, R.string.preference_general);
        SwitchPreferenceCompat switchPreferenceCompat = new SwitchPreferenceCompat(preferenceCategory.i());
        switchPreferenceCompat.q0("_notification_anime_all");
        f7.a.e(switchPreferenceCompat, R.string.preference_anime_all_notification);
        Boolean bool = Boolean.FALSE;
        f7.a.b(switchPreferenceCompat, bool);
        f7.a.d(switchPreferenceCompat, R.string.preference_anime_all_notification_summary);
        switchPreferenceCompat.t0(new C0014i());
        switchPreferenceCompat.p0(false);
        preferenceCategory.H0(switchPreferenceCompat);
        p pVar = p.f15031a;
        SwitchPreferenceCompat switchPreferenceCompat2 = new SwitchPreferenceCompat(preferenceCategory.i());
        switchPreferenceCompat2.q0("pref_keep_episodes_filtered_status");
        f7.a.e(switchPreferenceCompat2, R.string.keep_episodes_filtered_status);
        f7.a.b(switchPreferenceCompat2, bool);
        switchPreferenceCompat2.p0(false);
        preferenceCategory.H0(switchPreferenceCompat2);
        SwitchPreferenceCompat switchPreferenceCompat3 = new SwitchPreferenceCompat(preferenceCategory.i());
        switchPreferenceCompat3.q0("default_Adm");
        f7.a.e(switchPreferenceCompat3, R.string.preference_adm_summary_on);
        f7.a.b(switchPreferenceCompat3, bool);
        switchPreferenceCompat3.p0(false);
        preferenceCategory.H0(switchPreferenceCompat3);
        PreferenceCategory preferenceCategory2 = new PreferenceCategory(preferenceScreen.i());
        preferenceCategory2.p0(false);
        preferenceScreen.H0(preferenceCategory2);
        preferenceCategory2.A0("المشغل");
        ListPreference listPreference = new ListPreference(preferenceCategory2.i());
        listPreference.q0("default_player");
        f7.a.e(listPreference, R.string.preference_play_with);
        f7.a.c(listPreference, new Integer[]{Integer.valueOf(R.string.preference_none), Integer.valueOf(R.string.preference_mxplayer), Integer.valueOf(R.string.preference_exoplayer)});
        listPreference.W0(new String[]{"0", DiskLruCache.VERSION_1, "2"});
        f7.a.b(listPreference, "2");
        listPreference.x0("%s");
        listPreference.O0("الغاء");
        listPreference.p0(false);
        preferenceCategory2.H0(listPreference);
        f7.a.a(listPreference);
        Context i10 = preferenceCategory2.i();
        jc.l.e(i10, "context");
        IntListPreference intListPreference = new IntListPreference(i10, null, 2, null);
        intListPreference.q0("default_player_seek_amount");
        intListPreference.A0("وقت التقديم");
        intListPreference.V0(new String[]{"5", "(الافتراضي) 10", "15", "20", "30", "60"});
        intListPreference.W0(new String[]{"5", "10", "15", "20", "30", "60"});
        f7.a.b(intListPreference, "10");
        intListPreference.x0("%s");
        intListPreference.O0("الغاء");
        intListPreference.p0(false);
        preferenceCategory2.H0(intListPreference);
        f7.a.a(intListPreference);
        PreferenceCategory preferenceCategory3 = new PreferenceCategory(preferenceScreen.i());
        preferenceCategory3.p0(false);
        preferenceScreen.H0(preferenceCategory3);
        f7.a.e(preferenceCategory3, R.string.preference_personalize);
        ListPreference listPreference2 = new ListPreference(preferenceCategory3.i());
        listPreference2.q0("pref_theme_mode_key");
        f7.a.e(listPreference2, R.string.preference_theme);
        int i11 = Build.VERSION.SDK_INT;
        Integer valueOf = Integer.valueOf(R.string.theme_dark);
        Integer valueOf2 = Integer.valueOf(R.string.theme_light);
        if (i11 >= 26) {
            f7.a.c(listPreference2, new Integer[]{Integer.valueOf(R.string.theme_system), valueOf2, valueOf});
            f4.c cVar = f4.c.SYSTEM;
            listPreference2.W0(new String[]{cVar.name(), f4.c.LIGHT.name(), f4.c.DARK.name()});
            f7.a.b(listPreference2, cVar.name());
        } else {
            f7.a.c(listPreference2, new Integer[]{valueOf2, valueOf});
            f4.c cVar2 = f4.c.LIGHT;
            listPreference2.W0(new String[]{cVar2.name(), f4.c.DARK.name()});
            f7.a.b(listPreference2, cVar2.name());
        }
        listPreference2.x0("%s");
        listPreference2.t0(new c());
        listPreference2.O0("الغاء");
        listPreference2.p0(false);
        preferenceCategory3.H0(listPreference2);
        f7.a.a(listPreference2);
        ListPreference listPreference3 = new ListPreference(preferenceCategory3.i());
        listPreference3.q0("pref_theme_dark_key");
        f7.a.e(listPreference3, R.string.pref_theme_dark);
        f7.a.c(listPreference3, new Integer[]{Integer.valueOf(R.string.theme_dark_blue_default), Integer.valueOf(R.string.theme_dark_gray), Integer.valueOf(R.string.theme_dark_amoled)});
        f4.a aVar = f4.a.DARK_BLUE;
        listPreference3.W0(new String[]{aVar.name(), f4.a.GRAY.name(), f4.a.AMOLED.name()});
        f7.a.b(listPreference3, aVar.name());
        listPreference3.x0("%s");
        listPreference3.t0(new b());
        listPreference3.O0("الغاء");
        listPreference3.p0(false);
        preferenceCategory3.H0(listPreference3);
        f7.a.a(listPreference3);
        PreferenceCategory preferenceCategory4 = new PreferenceCategory(preferenceScreen.i());
        preferenceCategory4.p0(false);
        preferenceScreen.H0(preferenceCategory4);
        f7.a.e(preferenceCategory4, R.string.preference_other);
        Preference preference = new Preference(preferenceCategory4.i());
        f7.a.e(preference, R.string.words_bloacking);
        preference.x0("لن يتم عرض التعليقات التي تحتوي على الكلمات المحجوبة");
        preference.u0(new d());
        preference.p0(false);
        preferenceCategory4.H0(preference);
        Preference preference2 = new Preference(preferenceCategory4.i());
        f7.a.e(preference2, R.string.top_contributors_title);
        preference2.u0(new e());
        preference2.p0(false);
        preferenceCategory4.H0(preference2);
        Preference preference3 = new Preference(preferenceCategory4.i());
        f7.a.e(preference3, R.string.preference_share_app);
        preference3.u0(new f());
        preference3.p0(false);
        preferenceCategory4.H0(preference3);
        Preference preference4 = new Preference(preferenceCategory4.i());
        f7.a.e(preference4, R.string.preference_disclaimer);
        preference4.u0(new g(preference4, this));
        preference4.p0(false);
        preferenceCategory4.H0(preference4);
        Preference preference5 = new Preference(preferenceCategory4.i());
        f7.a.e(preference5, R.string.preference_about);
        preference5.u0(new h(preference5, this));
        preference5.p0(false);
        preferenceCategory4.H0(preference5);
        return preferenceScreen;
    }

    public final f4.d X() {
        return (f4.d) this.f485p.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 520 && intent != null && i11 == -1 && intent.getBooleanExtra("user_login", false)) {
            Preference I0 = I().I0("insert_google_login");
            if (I0 != null) {
                I0.B0(false);
            }
            Preference I02 = I().I0("remove_google_login");
            if (I02 == null) {
                return;
            }
            I02.B0(true);
        }
    }
}
