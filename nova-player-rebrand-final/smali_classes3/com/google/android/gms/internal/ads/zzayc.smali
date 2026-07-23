.class public final Lcom/google/android/gms/internal/ads/zzayc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhah;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhah;->zze()Lcom/google/android/gms/internal/ads/zzhah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, ""

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzgj$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/content/pm/ApkChecksum;

    move-result-object v4

    .line 4
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzgj$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/pm/ApkChecksum;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxa;->zzn()Lcom/google/android/gms/internal/ads/zzgxa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxa;->zzi()Lcom/google/android/gms/internal/ads/zzgxa;

    move-result-object v1

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzgj$$ExternalSyntheticApiModelOutline2;->m(Landroid/content/pm/ApkChecksum;)[B

    move-result-object v3

    .line 6
    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgxa;->zzj([BII)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayc;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhah;->zza(Ljava/lang/Object;)Z

    return-void
.end method
