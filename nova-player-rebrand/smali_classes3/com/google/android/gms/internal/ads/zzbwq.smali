.class final synthetic Lcom/google/android/gms/internal/ads/zzbwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbwr;

.field private final synthetic zzb:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbwr;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lcom/google/android/gms/internal/ads/zzbwr;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzb:Z

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zza:Lcom/google/android/gms/internal/ads/zzbwr;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbwr;->zzf(Z)V

    return-void
.end method
