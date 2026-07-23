.class public final Lcom/google/android/gms/internal/ads/zzaee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzaee;


# instance fields
.field private final zzb:I

.field private final zzc:J

.field private final zzd:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaee;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(IJJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaee;->zza:Lcom/google/android/gms/internal/ads/zzaee;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzb:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzc:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzd:J

    return-void
.end method

.method public static zza(JJ)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaee;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(IJJ)V

    return-object v0
.end method

.method public static zzb(JJ)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaee;

    const/4 v1, -0x2

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(IJJ)V

    return-object v0
.end method

.method public static zzc(J)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 6

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaee;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method final synthetic zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzb:I

    return v0
.end method

.method final synthetic zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzc:J

    return-wide v0
.end method

.method final synthetic zzf()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaee;->zzd:J

    return-wide v0
.end method
