.class public final Lcom/google/android/gms/internal/consent_sdk/zzco;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Landroid/app/Application;

.field private zzb:Lcom/google/android/gms/internal/consent_sdk/zzha;

.field private zzc:Lcom/google/android/gms/internal/consent_sdk/zzgt;

.field private zzd:Lcom/google/android/gms/internal/consent_sdk/zzgw;

.field private zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zze:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;J)Lcom/google/android/gms/internal/consent_sdk/zzif;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzif;->zza()Lcom/google/android/gms/internal/consent_sdk/zzid;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zza()Lcom/google/android/gms/internal/consent_sdk/zzgu;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgy;->zza()Lcom/google/android/gms/internal/consent_sdk/zzgx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgx;->zzc(I)Lcom/google/android/gms/internal/consent_sdk/zzgx;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgx;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgx;

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 5
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzgx;->zzb(J)Lcom/google/android/gms/internal/consent_sdk/zzgx;

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zze(Lcom/google/android/gms/internal/consent_sdk/zzgy;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zze:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/app/Application;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 p4, 0x80

    invoke-virtual {p3, p1, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_2

    const-string p3, "com.google.android.gms.ads.APPLICATION_ID"

    .line 10
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zze:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zze:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "UserMessagingPlatform"

    const-string p3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 12
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zze:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzha;

    if-nez p1, :cond_6

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzha;->zza()Lcom/google/android/gms/internal/consent_sdk/zzgz;

    move-result-object p1

    const-string p3, "4.0.0"

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzha;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 15
    :cond_6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zzf(Lcom/google/android/gms/internal/consent_sdk/zzha;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    if-nez p1, :cond_7

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zza()Lcom/google/android/gms/internal/consent_sdk/zzgv;

    move-result-object p1

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgv;->zza(I)Lcom/google/android/gms/internal/consent_sdk/zzgv;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgv;

    const/4 p3, 0x3

    .line 19
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgv;->zzd(I)Lcom/google/android/gms/internal/consent_sdk/zzgv;

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgv;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 22
    :cond_7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zzd(Lcom/google/android/gms/internal/consent_sdk/zzgw;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/app/Application;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 24
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz p2, :cond_9

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgt;->zza()Lcom/google/android/gms/internal/consent_sdk/zzgs;

    move-result-object p1

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p4, v2, :cond_8

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzco$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    goto :goto_1

    .line 27
    :cond_8
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, p2

    .line 28
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgs;

    .line 29
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzgs;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgs;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgt;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    :cond_a
    if-eqz p1, :cond_b

    .line 31
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzgt;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->zza:Landroid/app/Application;

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "UMP_eids"

    const-string p3, ""

    .line 33
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    const/16 p2, 0x2c

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zza(C)Lcom/google/android/gms/internal/consent_sdk/zzdo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdo;->zzb(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/consent_sdk/zzgu;

    goto :goto_2

    .line 36
    :cond_d
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzid;->zza(Lcom/google/android/gms/internal/consent_sdk/zzhc;)Lcom/google/android/gms/internal/consent_sdk/zzid;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzid;->zzb(J)Lcom/google/android/gms/internal/consent_sdk/zzid;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzif;

    return-object p1
.end method
