.class final synthetic Lcom/google/android/gms/internal/ads/zzcjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjw;

.field private final synthetic zzb:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjw;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzb:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjo;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjw;->zzV(ZJ)V

    return-void
.end method
