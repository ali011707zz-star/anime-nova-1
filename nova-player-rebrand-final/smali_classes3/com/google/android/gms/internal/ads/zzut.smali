.class final Lcom/google/android/gms/internal/ads/zzut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzut;


# instance fields
.field public final zzb:J

.field public final zzc:J

.field public final zzd:J

.field public final zze:Lcom/google/android/gms/internal/ads/zzff;

.field public zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzut;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, v1

    move-wide v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzut;-><init>(JJJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzut;->zza:Lcom/google/android/gms/internal/ads/zzut;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zzb:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzut;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzut;->zzd:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzff;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzff;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zze:Lcom/google/android/gms/internal/ads/zzff;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zzf:J

    return-void
.end method
