.class public final enum Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzibv;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzg:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field public static final enum zzk:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

.field private static final zzw:Lcom/google/android/gms/internal/ads/zzibw;

.field private static final synthetic zzy:[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;


# instance fields
.field private final zzx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "BANNER"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "NATIVE_EXPRESS"

    const/4 v2, 0x3

    .line 4
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "NATIVE_CONTENT"

    const/4 v2, 0x4

    .line 5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "NATIVE_APP_INSTALL"

    const/4 v2, 0x5

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v2, 0x6

    .line 7
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzg:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "DFP_BANNER"

    const/4 v2, 0x7

    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "DFP_INTERSTITIAL"

    const/16 v2, 0x8

    .line 9
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "REWARD_BASED_VIDEO_AD"

    const/16 v2, 0x9

    .line 10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const-string v1, "BANNER_SEARCH_ADS"

    const/16 v2, 0xa

    .line 11
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzf()[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzy:[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzw:Lcom/google/android/gms/internal/ads/zzibw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzx:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzy:[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzg:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzibx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza$zza;->zza:Lcom/google/android/gms/internal/ads/zzibx;

    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;
    .locals 3

    .line 0
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzg:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzi:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzj:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzx:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbgj$zzd$zza;->zzx:I

    return v0
.end method
