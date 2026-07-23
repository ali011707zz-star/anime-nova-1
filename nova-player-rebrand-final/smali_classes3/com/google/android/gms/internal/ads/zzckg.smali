.class final synthetic Lcom/google/android/gms/internal/ads/zzckg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzekb;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzekb;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzu()Lcom/google/android/gms/internal/ads/zzejw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckg;->zza:Lcom/google/android/gms/internal/ads/zzekb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzekb;->zza()Lcom/google/android/gms/internal/ads/zzfsj;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzejw;->zzf(Lcom/google/android/gms/internal/ads/zzfsj;)V

    return-void
.end method
