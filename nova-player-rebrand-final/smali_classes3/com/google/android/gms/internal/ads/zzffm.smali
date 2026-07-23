.class final Lcom/google/android/gms/internal/ads/zzffm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfls;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffm;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzflt;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzffp;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzfgi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffm;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    const/4 v2, 0x0

    .line 3
    check-cast v1, Lcom/google/android/gms/internal/ads/zzffl;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfli;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffm;->zza:Lcom/google/android/gms/internal/ads/zzfgj;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffl;->zza()Lcom/google/android/gms/internal/ads/zzdam;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfli;->zza:Lcom/google/android/gms/internal/ads/zzdam;

    return-void
.end method
