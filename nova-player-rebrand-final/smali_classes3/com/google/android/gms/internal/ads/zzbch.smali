.class public final enum Lcom/google/android/gms/internal/ads/zzbch;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzibv;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzbch;

.field public static final enum zzg:Lcom/google/android/gms/internal/ads/zzbch;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/ads/zzbch;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbch;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbch;->zza:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbch;

    .line 2
    const-string v3, "ARM7"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbch;->zzb:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbch;

    .line 3
    const-string v6, "X86"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzbch;->zzc:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbch;

    .line 4
    const-string v8, "ARM64"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzbch;->zzd:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbch;

    .line 5
    const-string v11, "X86_64"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/ads/zzbch;->zze:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzbch;

    .line 6
    const-string v13, "RISCV64"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/zzbch;->zzf:Lcom/google/android/gms/internal/ads/zzbch;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzbch;

    const-string v15, "UNKNOWN"

    move/from16 v16, v2

    const/16 v2, 0x3e7

    .line 7
    invoke-direct {v13, v15, v12, v2}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/ads/zzbch;->zzg:Lcom/google/android/gms/internal/ads/zzbch;

    new-array v2, v14, [Lcom/google/android/gms/internal/ads/zzbch;

    aput-object v0, v2, v16

    aput-object v1, v2, v4

    aput-object v3, v2, v5

    aput-object v6, v2, v9

    aput-object v8, v2, v7

    aput-object v11, v2, v10

    aput-object v13, v2, v12

    sput-object v2, Lcom/google/android/gms/internal/ads/zzbch;->zzi:[Lcom/google/android/gms/internal/ads/zzbch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbch;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbch;->zzi:[Lcom/google/android/gms/internal/ads/zzbch;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbch;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzbch;
    .locals 1

    .line 0
    if-eqz p0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3e7

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zzf:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zze:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zzd:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zzc:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zzg:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zzb:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbch;->zza:Lcom/google/android/gms/internal/ads/zzbch;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzibx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcg;->zza:Lcom/google/android/gms/internal/ads/zzibx;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbch;->zzh:I

    return v0
.end method
