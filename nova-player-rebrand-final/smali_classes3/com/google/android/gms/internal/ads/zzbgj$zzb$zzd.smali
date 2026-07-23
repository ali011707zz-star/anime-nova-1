.class public final enum Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzibv;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzibw;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    const-string v1, "IN_MEMORY"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzf()[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzg:[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zze:Lcom/google/android/gms/internal/ads/zzibw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzg:[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzibx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzibx;

    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;
    .locals 3

    .line 0
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzb$zzd;->zzf:I

    return v0
.end method
