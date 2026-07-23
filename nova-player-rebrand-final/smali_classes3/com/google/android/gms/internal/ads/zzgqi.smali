.class public abstract Lcom/google/android/gms/internal/ads/zzgqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgqg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqg;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 8

    .line 1
    const-string v0, "Play Store package is not found."

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Play Store package is disabled."

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    .line 4
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 8
    aget-object v5, p0, v3

    .line 9
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zza([B)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v7, "dev-keys"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "test-keys"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    const-string v0, ", "

    .line 12
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Interstitial$Builder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Play Store package certs are not valid. Found these sha256 certs: [%s]."

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 4
    :cond_6
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Play Store package is not signed -- possibly self-built package. Could not verify."

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzgqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 2
    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 14
    :catch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqg;

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    return v2
.end method
