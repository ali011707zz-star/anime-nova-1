.class public abstract Lcom/google/android/gms/internal/ads/zzhys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzhzs;Ljava/lang/Object;)V
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhys;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhyr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhyr;-><init>(Lcom/google/android/gms/internal/ads/zzhys;[B)V

    return-object v0

    :cond_0
    return-object p0
.end method
