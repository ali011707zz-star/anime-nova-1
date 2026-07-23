.class final synthetic Lcom/google/android/gms/internal/ads/zzqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzrb;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrb;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqn;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzrb;->zzp(Ljava/lang/String;JJ)V

    return-void
.end method
