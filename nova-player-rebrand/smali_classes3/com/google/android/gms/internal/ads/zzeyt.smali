.class public final Lcom/google/android/gms/internal/ads/zzeyt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfiq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfiq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyt;->zza:Lcom/google/android/gms/internal/ads/zzfiq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyt;->zza:Lcom/google/android/gms/internal/ads/zzfiq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeyu;-><init>(Lcom/google/android/gms/internal/ads/zzfiq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x19

    return v0
.end method
