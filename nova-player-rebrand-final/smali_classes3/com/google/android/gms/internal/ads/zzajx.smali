.class final Lcom/google/android/gms/internal/ads/zzajx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:I

.field public zzb:I

.field public zzc:I

.field public zzd:J

.field private final zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzer;

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzf:Lcom/google/android/gms/internal/ads/zzer;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajx;->zze:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zza:I

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzi:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaey;->zza(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zza:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzf:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzJ()J

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzf:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzz()J

    move-result-wide v2

    .line 1
    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzd:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzh:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzg:Lcom/google/android/gms/internal/ads/zzer;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzc:I

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzi:I

    const/4 v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzi:I

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzer;->zzH()I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzajx;->zzh:I

    :cond_3
    return v1
.end method
