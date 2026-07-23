.class public final Lcom/google/android/gms/internal/consent_sdk/zzgw;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzgw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/consent_sdk/zzgv;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzp()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzgv;

    return-object v0
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/consent_sdk/zzgw;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzgw;I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzh:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzgw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/consent_sdk/zzgw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/consent_sdk/zzgw;I)V
    .locals 1

    .line 0
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zze:I

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzgv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzhb;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzgw;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string p3, "zzd"

    const/4 v3, 0x0

    aput-object p3, p1, v3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzgw;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1208\u0001\u0003\u1208\u0002\u0004\u1004\u0003"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
