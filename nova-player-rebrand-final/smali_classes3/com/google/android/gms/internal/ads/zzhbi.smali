.class public final Lcom/google/android/gms/internal/ads/zzhbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhbg;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhaz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbb;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhbg;

.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbh;->zza:Lcom/google/android/gms/internal/ads/zzhbh;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhbi;->zza:Lcom/google/android/gms/internal/ads/zzhbg;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhaz;IIZZLcom/google/android/gms/internal/ads/zzhbg;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzb:Lcom/google/android/gms/internal/ads/zzhaz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzh:I

    add-int/lit8 p2, p2, -0x2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbb;->zzb:Lcom/google/android/gms/internal/ads/zzhbb;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbb;->zzc:Lcom/google/android/gms/internal/ads/zzhbb;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzc:Lcom/google/android/gms/internal/ads/zzhbb;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zze:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzf:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzg:Lcom/google/android/gms/internal/ads/zzhbg;

    return-void
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzhbg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhbi;->zza:Lcom/google/android/gms/internal/ads/zzhbg;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzg:Lcom/google/android/gms/internal/ads/zzhbg;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhbg;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzb:Lcom/google/android/gms/internal/ads/zzhaz;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhbb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzc:Lcom/google/android/gms/internal/ads/zzhbb;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzd:I

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zze:Z

    return v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzb:Lcom/google/android/gms/internal/ads/zzhaz;

    return-object v0
.end method

.method final synthetic zzg()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzd:I

    return v0
.end method

.method final synthetic zzh()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zze:Z

    return v0
.end method

.method final synthetic zzi()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzf:Z

    return v0
.end method

.method final synthetic zzj()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhbi;->zzh:I

    return v0
.end method
