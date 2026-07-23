.class public abstract Lcom/google/android/gms/internal/ads/zzijo;
.super Lcom/google/android/gms/internal/ads/zzijr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatj;


# instance fields
.field protected final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzijr;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzijo;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzijo;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzijs;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzatg;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzijs;->zzc()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzijr;->zzc:Lcom/google/android/gms/internal/ads/zzijs;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzijs;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzijr;->zze:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzijs;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzijs;->zzd(J)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzijs;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzijr;->zzf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzijr;->zzb:Lcom/google/android/gms/internal/ads/zzatg;

    return-void
.end method
