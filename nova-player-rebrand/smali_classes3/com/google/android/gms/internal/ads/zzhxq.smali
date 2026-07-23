.class final Lcom/google/android/gms/internal/ads/zzhxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhnp;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhnp;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhnp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhnp;Lcom/google/android/gms/internal/ads/zzhnp;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zza:Lcom/google/android/gms/internal/ads/zzhnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zzb:Lcom/google/android/gms/internal/ads/zzhnp;

    return-void
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zza:Lcom/google/android/gms/internal/ads/zzhnp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhnp;->zza([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxq;->zzb:Lcom/google/android/gms/internal/ads/zzhnp;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhnp;->zza([BI)[B

    move-result-object p1

    return-object p1
.end method
