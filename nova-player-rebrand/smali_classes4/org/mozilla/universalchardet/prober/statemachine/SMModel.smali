.class public abstract Lorg/mozilla/universalchardet/prober/statemachine/SMModel;
.super Ljava/lang/Object;
.source "SMModel.java"


# instance fields
.field protected charLenTable:[I

.field protected classFactor:I

.field protected classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

.field protected name:Ljava/lang/String;

.field protected stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 71
    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classFactor:I

    .line 72
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    .line 73
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->charLenTable:[I

    .line 74
    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharLen(I)I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->charLenTable:[I

    aget p1, v0, p1

    return p1
.end method

.method public getClass(B)I
    .locals 1

    and-int/lit16 p1, p1, 0xff

    .line 80
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    invoke-virtual {v0, p1}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unpack(I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextState(II)I
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->stateTable:Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;->classFactor:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->unpack(I)I

    move-result p1

    return p1
.end method
