.class public final Lcom/google/android/gms/internal/consent_sdk/zzoo;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzoo;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/consent_sdk/zzqq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzoo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzoo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzoo;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzoo;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzoo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzs()Lcom/google/android/gms/internal/consent_sdk/zzqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzoo;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzqq;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzoo;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzoo;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzoo;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzoo;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzoo;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzol;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzol;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzon;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzoo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzoo;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzom;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqp;

    aput-object p2, p1, v1

    const-string v1, "zzf"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzoo;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzoo;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u082c\u0003\u180c\u0001"

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
