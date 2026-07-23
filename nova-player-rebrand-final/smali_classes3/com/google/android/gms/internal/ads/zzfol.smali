.class final Lcom/google/android/gms/internal/ads/zzfol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoo;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfol;->zza:Lcom/google/android/gms/internal/ads/zzfoo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfol;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfol;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfol;->zza:Lcom/google/android/gms/internal/ads/zzfoo;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoo;->zza(Lcom/google/android/gms/internal/ads/zzfoe;)Lcom/google/android/gms/internal/ads/zzfoo;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method
