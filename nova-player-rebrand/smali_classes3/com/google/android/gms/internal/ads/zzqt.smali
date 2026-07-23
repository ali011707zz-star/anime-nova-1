.class final synthetic Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzrb;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrb;IJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzrb;->zzs(IJJ)V

    return-void
.end method
