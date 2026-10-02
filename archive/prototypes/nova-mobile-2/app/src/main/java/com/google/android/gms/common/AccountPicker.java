package com.google.android.gms.common;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
/* loaded from: classes.dex */
public final class AccountPicker {

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    /* loaded from: classes.dex */
    public static class AccountChooserOptions {
        private Account zza;
        private boolean zzb;
        private ArrayList<Account> zzc;
        private ArrayList<String> zzd;
        private boolean zze;
        private String zzf;
        private Bundle zzg;
        private boolean zzh;
        private int zzi;
        private String zzj;
        private boolean zzk;
        private zza zzl;
        private String zzm;
        private boolean zzn;
        private boolean zzo;

        /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
        /* loaded from: classes.dex */
        public static class Builder {
            private Account zza;
            private ArrayList<Account> zzb;
            private ArrayList<String> zzc;
            private boolean zzd = false;
            private String zze;
            private Bundle zzf;

            @RecentlyNonNull
            public AccountChooserOptions build() {
                Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
                Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
                AccountChooserOptions accountChooserOptions = new AccountChooserOptions();
                accountChooserOptions.zzd = this.zzc;
                accountChooserOptions.zzc = this.zzb;
                accountChooserOptions.zze = this.zzd;
                AccountChooserOptions.zzs(accountChooserOptions, null);
                AccountChooserOptions.zzt(accountChooserOptions, null);
                accountChooserOptions.zzg = this.zzf;
                accountChooserOptions.zza = this.zza;
                AccountChooserOptions.zzw(accountChooserOptions, false);
                AccountChooserOptions.zzx(accountChooserOptions, false);
                AccountChooserOptions.zzy(accountChooserOptions, null);
                AccountChooserOptions.zzz(accountChooserOptions, 0);
                accountChooserOptions.zzf = this.zze;
                AccountChooserOptions.zzB(accountChooserOptions, false);
                AccountChooserOptions.zzC(accountChooserOptions, false);
                AccountChooserOptions.zzD(accountChooserOptions, false);
                return accountChooserOptions;
            }

            @RecentlyNonNull
            public Builder setAllowableAccounts(List<Account> list) {
                this.zzb = list == null ? null : new ArrayList<>(list);
                return this;
            }

            @RecentlyNonNull
            public Builder setAllowableAccountsTypes(List<String> list) {
                this.zzc = list == null ? null : new ArrayList<>(list);
                return this;
            }

            @RecentlyNonNull
            public Builder setAlwaysShowAccountPicker(boolean z10) {
                this.zzd = z10;
                return this;
            }

            @RecentlyNonNull
            public Builder setOptionsForAddingAccount(Bundle bundle) {
                this.zzf = bundle;
                return this;
            }

            @RecentlyNonNull
            public Builder setSelectedAccount(Account account) {
                this.zza = account;
                return this;
            }

            @RecentlyNonNull
            public Builder setTitleOverrideText(String str) {
                this.zze = str;
                return this;
            }
        }

        public static /* synthetic */ boolean zzB(AccountChooserOptions accountChooserOptions, boolean z10) {
            accountChooserOptions.zzk = false;
            return false;
        }

        public static /* synthetic */ boolean zzC(AccountChooserOptions accountChooserOptions, boolean z10) {
            accountChooserOptions.zzn = false;
            return false;
        }

        public static /* synthetic */ boolean zzD(AccountChooserOptions accountChooserOptions, boolean z10) {
            accountChooserOptions.zzo = false;
            return false;
        }

        public static /* synthetic */ boolean zza(AccountChooserOptions accountChooserOptions) {
            boolean z10 = accountChooserOptions.zzk;
            return false;
        }

        public static /* synthetic */ String zzb(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzj;
            return null;
        }

        public static /* synthetic */ zza zzc(AccountChooserOptions accountChooserOptions) {
            zza zzaVar = accountChooserOptions.zzl;
            return null;
        }

        public static /* synthetic */ boolean zzd(AccountChooserOptions accountChooserOptions) {
            boolean z10 = accountChooserOptions.zzb;
            return false;
        }

        public static /* synthetic */ int zze(AccountChooserOptions accountChooserOptions) {
            int i10 = accountChooserOptions.zzi;
            return 0;
        }

        public static /* synthetic */ boolean zzl(AccountChooserOptions accountChooserOptions) {
            boolean z10 = accountChooserOptions.zzh;
            return false;
        }

        public static /* synthetic */ String zzm(AccountChooserOptions accountChooserOptions) {
            String str = accountChooserOptions.zzm;
            return null;
        }

        public static /* synthetic */ boolean zzn(AccountChooserOptions accountChooserOptions) {
            boolean z10 = accountChooserOptions.zzn;
            return false;
        }

        public static /* synthetic */ boolean zzo(AccountChooserOptions accountChooserOptions) {
            boolean z10 = accountChooserOptions.zzo;
            return false;
        }

        public static /* synthetic */ zza zzs(AccountChooserOptions accountChooserOptions, zza zzaVar) {
            accountChooserOptions.zzl = null;
            return null;
        }

        public static /* synthetic */ String zzt(AccountChooserOptions accountChooserOptions, String str) {
            accountChooserOptions.zzj = null;
            return null;
        }

        public static /* synthetic */ boolean zzw(AccountChooserOptions accountChooserOptions, boolean z10) {
            accountChooserOptions.zzb = false;
            return false;
        }

        public static /* synthetic */ boolean zzx(AccountChooserOptions accountChooserOptions, boolean z10) {
            accountChooserOptions.zzh = false;
            return false;
        }

        public static /* synthetic */ String zzy(AccountChooserOptions accountChooserOptions, String str) {
            accountChooserOptions.zzm = null;
            return null;
        }

        public static /* synthetic */ int zzz(AccountChooserOptions accountChooserOptions, int i10) {
            accountChooserOptions.zzi = 0;
            return 0;
        }
    }

    private AccountPicker() {
    }

    @RecentlyNonNull
    @Deprecated
    public static Intent newChooseAccountIntent(Account account, ArrayList<Account> arrayList, String[] strArr, boolean z10, String str, String str2, String[] strArr2, Bundle bundle) {
        Intent intent = new Intent();
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", strArr);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", z10);
        intent.putExtra("descriptionTextOverride", str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra("addAccountRequiredFeatures", strArr2);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        return intent;
    }

    @RecentlyNonNull
    public static Intent newChooseAccountIntent(@RecentlyNonNull AccountChooserOptions accountChooserOptions) {
        Intent intent = new Intent();
        AccountChooserOptions.zza(accountChooserOptions);
        AccountChooserOptions.zzb(accountChooserOptions);
        Preconditions.checkArgument(true, "We only support hostedDomain filter for account chip styled account picker");
        AccountChooserOptions.zzc(accountChooserOptions);
        Preconditions.checkArgument(true, "Consent is only valid for account chip styled account picker");
        AccountChooserOptions.zzd(accountChooserOptions);
        Preconditions.checkArgument(true, "Making the selected account non-clickable is only supported for the theme THEME_DAY_NIGHT_GOOGLE_MATERIAL2");
        AccountChooserOptions.zza(accountChooserOptions);
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", accountChooserOptions.zzc);
        if (accountChooserOptions.zzd != null) {
            intent.putExtra("allowableAccountTypes", (String[]) accountChooserOptions.zzd.toArray(new String[0]));
        }
        intent.putExtra("addAccountOptions", accountChooserOptions.zzg);
        intent.putExtra("selectedAccount", accountChooserOptions.zza);
        AccountChooserOptions.zzd(accountChooserOptions);
        intent.putExtra("selectedAccountIsNotClickable", false);
        intent.putExtra("alwaysPromptForAccount", accountChooserOptions.zze);
        intent.putExtra("descriptionTextOverride", accountChooserOptions.zzf);
        AccountChooserOptions.zzl(accountChooserOptions);
        intent.putExtra("setGmsCoreAccount", false);
        AccountChooserOptions.zzm(accountChooserOptions);
        intent.putExtra("realClientPackage", (String) null);
        AccountChooserOptions.zze(accountChooserOptions);
        intent.putExtra("overrideTheme", 0);
        AccountChooserOptions.zza(accountChooserOptions);
        intent.putExtra("overrideCustomTheme", 0);
        AccountChooserOptions.zzb(accountChooserOptions);
        intent.putExtra("hostedDomainFilter", (String) null);
        Bundle bundle = new Bundle();
        AccountChooserOptions.zza(accountChooserOptions);
        AccountChooserOptions.zzc(accountChooserOptions);
        AccountChooserOptions.zzn(accountChooserOptions);
        AccountChooserOptions.zzo(accountChooserOptions);
        if (!bundle.isEmpty()) {
            intent.putExtra("first_party_options_bundle", bundle);
        }
        return intent;
    }
}
