.class public final enum Lcom/google/android/gms/internal/ads/zzhpt;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzibv;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzhpt;

.field public static final enum zzg:Lcom/google/android/gms/internal/ads/zzhpt;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/ads/zzhpt;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhpt;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhpt;->zza:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhpt;

    .line 2
    const-string v3, "SHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhpt;->zzb:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhpt;

    .line 3
    const-string v5, "SHA384"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzhpt;->zzc:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhpt;

    .line 4
    const-string v7, "SHA256"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzhpt;->zzd:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhpt;

    .line 5
    const-string v9, "SHA512"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/zzhpt;->zze:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhpt;

    .line 6
    const-string v11, "SHA224"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/zzhpt;->zzf:Lcom/google/android/gms/internal/ads/zzhpt;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzhpt;

    const/4 v13, -0x1

    .line 7
    const-string v14, "UNRECOGNIZED"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13}, Lcom/google/android/gms/internal/ads/zzhpt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzhpt;->zzg:Lcom/google/android/gms/internal/ads/zzhpt;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/ads/zzhpt;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v15

    sput-object v13, Lcom/google/android/gms/internal/ads/zzhpt;->zzi:[Lcom/google/android/gms/internal/ads/zzhpt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzhpt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhpt;->zzi:[Lcom/google/android/gms/internal/ads/zzhpt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzhpt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhpt;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzhpt;
    .locals 1

    .line 0
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzf:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zze:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzd:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzc:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzb:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhpt;->zza:Lcom/google/android/gms/internal/ads/zzhpt;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhpt;->zzg:Lcom/google/android/gms/internal/ads/zzhpt;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhpt;->zzh:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
