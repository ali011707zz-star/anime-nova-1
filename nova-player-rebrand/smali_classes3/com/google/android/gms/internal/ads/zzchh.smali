.class final Lcom/google/android/gms/internal/ads/zzchh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzchj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchj;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/internal/ads/zzchj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/internal/ads/zzchk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchh;->zza:Lcom/google/android/gms/internal/ads/zzchj;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchk;->zzd(Lcom/google/android/gms/internal/ads/zzchj;)V

    return-void
.end method
