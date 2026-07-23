.class final synthetic Lcom/google/android/gms/internal/ads/zzcjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjw;

.field private final synthetic zzb:Z

.field private final synthetic zzc:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjw;ZJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzc:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zza:Lcom/google/android/gms/internal/ads/zzcjw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcjr;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjw;->zzY(ZJ)V

    return-void
.end method
