.class final synthetic Lcom/google/android/gms/internal/ads/zzeld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzelg;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeld;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeld;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeld;->zza:Lcom/google/android/gms/internal/ads/zzelg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeld;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzelg;->zzd(Lcom/google/android/gms/internal/ads/zzcjl;)V

    return-void
.end method
