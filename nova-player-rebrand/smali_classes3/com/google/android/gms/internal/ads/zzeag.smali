.class final synthetic Lcom/google/android/gms/internal/ads/zzeag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeak;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeak;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeag;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeag;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeak;->zzj(Lcom/google/android/gms/internal/ads/zzfoe;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
