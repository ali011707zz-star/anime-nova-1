.class final synthetic Lcom/google/android/gms/internal/ads/zzcke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzckh;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckh;Lcom/google/android/gms/internal/ads/zzejz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zza:Lcom/google/android/gms/internal/ads/zzckh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzb:Lcom/google/android/gms/internal/ads/zzejz;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zza:Lcom/google/android/gms/internal/ads/zzckh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzckf;-><init>(Lcom/google/android/gms/internal/ads/zzckh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcke;->zzb:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzejz;->zze(Lcom/google/android/gms/internal/ads/zzfsu;)V

    return-void
.end method
